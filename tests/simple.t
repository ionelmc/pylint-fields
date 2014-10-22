Without the plugin:

  $ pylint --rcfile=$TESTDIR/pylint.rc --errors-only simple
  ************* Module simple
  simple:10: [E1101(no-member), ] Instance of 'MyContainer' has no 'a' member
  simple:12: [E1101(no-member), ] Instance of 'MyContainer' has no 'missing' member
  [2]

With the plugin:

  $ pylint --rcfile=$TESTDIR/simple.rc --errors-only simple
  xxx
