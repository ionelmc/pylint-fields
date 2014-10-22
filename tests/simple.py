import fields


class MyContainer(fields.Fields.a.b.c.d):
    pass

inst = MyContainer()

inst = MyContainer(1, 2, 3, 4)

print(inst.a)

print(inst.missing)

from fields import Fields


class MyContainer2(Fields.a.b.c.d):
    pass

inst = MyContainer2()

inst = MyContainer2(1, 2, 3, 4)

print(inst.a)

print(inst.missing)


class MyContainer3(fields.Fields.a.b.c[1].d[2]):
    pass


inst = MyContainer3()

inst = MyContainer3(1, 2)

print(inst.a)

print(inst.missing)


class MyContainer4(Fields.a.b.c[1].d[2]):
    pass


inst = MyContainer4()

inst = MyContainer4(1, 2)

print(inst.a)

print(inst.missing)
