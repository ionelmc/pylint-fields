Without the plugin:

  $ pylint --rcfile=$TESTDIR/pylint.rc --errors-only simple
  ************* Module simple
  simple:11: [E1101(no-member), ] Instance of 'MyContainer' has no 'a' member
  simple:13: [E1101(no-member), ] Instance of 'MyContainer' has no 'missing' member
  simple:25: [E1101(no-member), ] Instance of 'MyContainer2' has no 'a' member
  simple:27: [E1101(no-member), ] Instance of 'MyContainer2' has no 'missing' member
  simple:38: [E1101(no-member), ] Instance of 'MyContainer3' has no 'a' member
  simple:40: [E1101(no-member), ] Instance of 'MyContainer3' has no 'missing' member
  simple:51: [E1101(no-member), ] Instance of 'MyContainer4' has no 'a' member
  simple:53: [E1101(no-member), ] Instance of 'MyContainer4' has no 'missing' member
  [2]

With the plugin:

  $ pylint --rcfile=$TESTDIR/simple.rc --errors-only simple
  Plugin registerd !
  ************* Module simple
  E: 13,11: Instance of 'MyContainer' has no 'missing' member (no-member)
  E: 27,11: Instance of 'MyContainer2' has no 'missing' member (no-member)
  E: 40,11: Instance of 'MyContainer3' has no 'missing' member (no-member)
  E: 53,11: Instance of 'MyContainer4' has no 'missing' member (no-member)
  [2]
