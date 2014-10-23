import fields


class MyContainer(fields.Fields.a.b.c.d):
    pass

inst = MyContainer()
inst = MyContainer(1, 2, 3, 4)
print(inst.a)
print(inst.missing)


from fields import Fields


class MyContainerShort(Fields.a.b.c.d):
    pass

inst = MyContainerShort()
inst = MyContainerShort(1, 2, 3, 4)
print(inst.a)
print(inst.missing)


class MyContainerDefaults(fields.Fields.a.b.c[1].d[2]):
    pass


inst = MyContainerDefaults()
inst = MyContainerDefaults(1, 2)
print(inst.a)
print(inst.missing)


class MyContainerShortDefaults(Fields.a.b.c[1].d[2]):
    pass


inst = MyContainerShortDefaults()
inst = MyContainerShortDefaults(1, 2)
print(inst.a)
print(inst.missing)


class MyContainerCustomInit(fields.Fields.a.b.c.d):
    def __init__(self, x):
        pass

inst = MyContainerCustomInit()
inst = MyContainerCustomInit(1)
inst = MyContainerCustomInit(1, 2)
print(inst.a)
print(inst.missing)


class MyContainerShortCustomInit(Fields.a.b.c.d):
    def __init__(self, x):
        pass

inst = MyContainerShortCustomInit()
inst = MyContainerShortCustomInit(1)
inst = MyContainerShortCustomInit(1, 2)
print(inst.a)
print(inst.missing)


class MyContainerEmpty(Fields):
    def __init__(self, x):
        pass

inst = MyContainerEmpty()
print(inst.missing)


class MyContainerShortEmpty(Fields):
    def __init__(self, x):
        pass

inst = MyContainerShortEmpty()
print(inst.missing)
