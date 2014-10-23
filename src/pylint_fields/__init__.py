__version__ = "0.1.0"

from astroid import Getattr
from astroid import MANAGER
from astroid import Name
from astroid import scoped_nodes
from astroid import Subscript
from astroid.builder import AstroidBuilder


def register(linter):
    pass


def dive(obj, stack=(), required=()):
    if isinstance(obj, Getattr):
        return dive(
            obj.expr,
            (obj.attrname, ) + stack,
            required if isinstance(obj.parent, Subscript) else (obj.attrname, ) + required
        )
    elif isinstance(obj, Subscript):
        return dive(obj.value, stack)
    elif isinstance(obj, Name):
        if obj.name == 'fields':
            if stack and stack[0] == 'Fields':
                return stack[1:], required[1:] if required and required[0] == 'Fields' else required
        elif obj.name == 'Fields':
            return stack, required
    return (), ()


def transform(cls):
    for base in cls.bases:
        fields, required = dive(base)
        if required and '__init__' not in cls.locals:
            cls.locals['__init__'] = AstroidBuilder(MANAGER).string_build(
                'def __init__(self, %s): pass' % ', '.join(required)
            ).locals['__init__']
        cls.locals.update(
            (name, [PlaceholderObject]) for name in fields
        )


PlaceholderObject = AstroidBuilder(MANAGER).string_build('object')
MANAGER.register_transform(scoped_nodes.Class, transform)
