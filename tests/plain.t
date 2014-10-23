Without the plugin:

  $ pylint --rcfile=$TESTDIR/plain.rc --errors-only simple
  ************* Module simple
  simple:09:E1101: Instance of 'MyContainer' has no 'a' member                            | no-member
  simple:10:E1101: Instance of 'MyContainer' has no 'missing' member                      | no-member
  simple:21:E1101: Instance of 'MyContainerShort' has no 'a' member                       | no-member
  simple:22:E1101: Instance of 'MyContainerShort' has no 'missing' member                 | no-member
  simple:31:E1101: Instance of 'MyContainerDefaults' has no 'a' member                    | no-member
  simple:32:E1101: Instance of 'MyContainerDefaults' has no 'missing' member              | no-member
  simple:41:E1101: Instance of 'MyContainerShortDefaults' has no 'a' member               | no-member
  simple:42:E1101: Instance of 'MyContainerShortDefaults' has no 'missing' member         | no-member
  simple:49:E1120: No value for argument 'x' in constructor call                          | no-value-for-parameter
  simple:51:E1121: Too many positional arguments for constructor call                     | too-many-function-args
  simple:52:E1101: Instance of 'MyContainerCustomInit' has no 'a' member                  | no-member
  simple:53:E1101: Instance of 'MyContainerCustomInit' has no 'missing' member            | no-member
  simple:60:E1120: No value for argument 'x' in constructor call                          | no-value-for-parameter
  simple:62:E1121: Too many positional arguments for constructor call                     | too-many-function-args
  simple:63:E1101: Instance of 'MyContainerShortCustomInit' has no 'a' member             | no-member
  simple:64:E1101: Instance of 'MyContainerShortCustomInit' has no 'missing' member       | no-member
  [2]

With the plugin:

  $ pylint --rcfile=$TESTDIR/simple.rc --errors-only simple
  ************* Module simple
  simple:07:E1120: No value for argument 'a' in constructor call                          | no-value-for-parameter
  simple:07:E1120: No value for argument 'b' in constructor call                          | no-value-for-parameter
  simple:07:E1120: No value for argument 'c' in constructor call                          | no-value-for-parameter
  simple:07:E1120: No value for argument 'd' in constructor call                          | no-value-for-parameter
  simple:10:E1101: Instance of 'MyContainer' has no 'missing' member                      | no-member
  simple:19:E1120: No value for argument 'a' in constructor call                          | no-value-for-parameter
  simple:19:E1120: No value for argument 'b' in constructor call                          | no-value-for-parameter
  simple:19:E1120: No value for argument 'c' in constructor call                          | no-value-for-parameter
  simple:19:E1120: No value for argument 'd' in constructor call                          | no-value-for-parameter
  simple:22:E1101: Instance of 'MyContainerShort' has no 'missing' member                 | no-member
  simple:29:E1120: No value for argument 'a' in constructor call                          | no-value-for-parameter
  simple:29:E1120: No value for argument 'b' in constructor call                          | no-value-for-parameter
  simple:32:E1101: Instance of 'MyContainerDefaults' has no 'missing' member              | no-member
  simple:39:E1120: No value for argument 'a' in constructor call                          | no-value-for-parameter
  simple:39:E1120: No value for argument 'b' in constructor call                          | no-value-for-parameter
  simple:42:E1101: Instance of 'MyContainerShortDefaults' has no 'missing' member         | no-member
  simple:49:E1120: No value for argument 'x' in constructor call                          | no-value-for-parameter
  simple:51:E1121: Too many positional arguments for constructor call                     | too-many-function-args
  simple:53:E1101: Instance of 'MyContainerCustomInit' has no 'missing' member            | no-member
  simple:60:E1120: No value for argument 'x' in constructor call                          | no-value-for-parameter
  simple:62:E1121: Too many positional arguments for constructor call                     | too-many-function-args
  simple:64:E1101: Instance of 'MyContainerShortCustomInit' has no 'missing' member       | no-member
  [2]
