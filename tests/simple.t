Without the plugin:

  $ pylint --rcfile=$TESTDIR/pylint.rc --errors-only simple
  ************* Module simple
  E:  9,11: Instance of 'MyContainer' has no 'a' member (no-member)
  E: 10,11: Instance of 'MyContainer' has no 'missing' member (no-member)
  E: 21,11: Instance of 'MyContainerShort' has no 'a' member (no-member)
  E: 22,11: Instance of 'MyContainerShort' has no 'missing' member (no-member)
  E: 31,11: Instance of 'MyContainerDefaults' has no 'a' member (no-member)
  E: 32,11: Instance of 'MyContainerDefaults' has no 'missing' member (no-member)
  E: 41,11: Instance of 'MyContainerShortDefaults' has no 'a' member (no-member)
  E: 42,11: Instance of 'MyContainerShortDefaults' has no 'missing' member (no-member)
  E: 49,28: No value for argument 'x' in constructor call (no-value-for-parameter)
  E: 51,28: Too many positional arguments for constructor call (too-many-function-args)
  E: 52,11: Instance of 'MyContainerCustomInit' has no 'a' member (no-member)
  E: 53,11: Instance of 'MyContainerCustomInit' has no 'missing' member (no-member)
  E: 60,33: No value for argument 'x' in constructor call (no-value-for-parameter)
  E: 62,33: Too many positional arguments for constructor call (too-many-function-args)
  E: 63,11: Instance of 'MyContainerShortCustomInit' has no 'a' member (no-member)
  E: 64,11: Instance of 'MyContainerShortCustomInit' has no 'missing' member (no-member)
  [2]

With the plugin:

  $ pylint --rcfile=$TESTDIR/simple.rc --errors-only simple
  ************* Module simple
  E:  7,18: No value for argument 'a' in constructor call (no-value-for-parameter)
  E:  7,18: No value for argument 'b' in constructor call (no-value-for-parameter)
  E:  7,18: No value for argument 'c' in constructor call (no-value-for-parameter)
  E:  7,18: No value for argument 'd' in constructor call (no-value-for-parameter)
  E: 10,11: Instance of 'MyContainer' has no 'missing' member (no-member)
  E: 19,23: No value for argument 'a' in constructor call (no-value-for-parameter)
  E: 19,23: No value for argument 'b' in constructor call (no-value-for-parameter)
  E: 19,23: No value for argument 'c' in constructor call (no-value-for-parameter)
  E: 19,23: No value for argument 'd' in constructor call (no-value-for-parameter)
  E: 22,11: Instance of 'MyContainerShort' has no 'missing' member (no-member)
  E: 29,26: No value for argument 'a' in constructor call (no-value-for-parameter)
  E: 29,26: No value for argument 'b' in constructor call (no-value-for-parameter)
  E: 32,11: Instance of 'MyContainerDefaults' has no 'missing' member (no-member)
  E: 39,31: No value for argument 'a' in constructor call (no-value-for-parameter)
  E: 39,31: No value for argument 'b' in constructor call (no-value-for-parameter)
  E: 42,11: Instance of 'MyContainerShortDefaults' has no 'missing' member (no-member)
  E: 49,28: No value for argument 'x' in constructor call (no-value-for-parameter)
  E: 51,28: Too many positional arguments for constructor call (too-many-function-args)
  E: 53,11: Instance of 'MyContainerCustomInit' has no 'missing' member (no-member)
  E: 60,33: No value for argument 'x' in constructor call (no-value-for-parameter)
  E: 62,33: Too many positional arguments for constructor call (too-many-function-args)
  E: 64,11: Instance of 'MyContainerShortCustomInit' has no 'missing' member (no-member)
  [2]
