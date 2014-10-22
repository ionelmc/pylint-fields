__version__ = "0.1.0"

def register(linter):
    from aspectlib import debug, weave
    #weave('pylint.checkers.BaseChecker', debug.log)
    print("Plugin registerd !")

from astroid import Getattr
from astroid import MANAGER
from astroid import Name, Subscript
from astroid import scoped_nodes
from astroid.builder import AstroidBuilder

def dive(obj, stack=()):
    if isinstance(obj, Getattr):
        return dive(obj.expr, (obj.attrname, ) + stack)
    elif isinstance(obj, Subscript):
        return dive(obj.value, stack)
    elif isinstance(obj, Name):
        if obj.name == 'fields':
            if stack and stack[0] == 'Fields':
                return stack[1:]
        elif obj.name == 'Fields':
            return stack
    return ()


def transform(cls):
    for base in cls.bases:
        cls.locals.update(
            (name, [PlaceholderObject]) for name in dive(base)
        )

PlaceholderObject = AstroidBuilder(MANAGER).string_build('object')
MANAGER.register_transform(scoped_nodes.Class, transform)
