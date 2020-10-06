
### How to run the UI and RWD Tests

###### UI & API - Smoke Tests
```
$ mvn clean test -Dcucumber.options="--tags @Smoke" -DExecutionPlatform="AWS_CHROME"
```

###### API Tests :
```
$ mvn clean test -Dcucumber.options="--tags @APITest"
```

###### UI Tests
```
$ mvn clean test -Dcucumber.options="--tags @UITest" -DExecutionPlatform="AWS_CHROME"
$ mvn clean test -Dcucumber.options="--tags @UITest" -DExecutionPlatform="AWS_FIREFOX"
$ mvn clean test -Dcucumber.options="--tags @UITest" -DExecutionPlatform="LOCAL_CHROME"
$ mvn clean test -Dcucumber.options="--tags '@UITest and @Search'" -DExecutionPlatform="LOCAL_CHROME"
$ mvn clean test -Dcucumber.options="--tags @UITest" -DExecutionPlatform="AWS_DEVICEFARM_CHROME"
$ mvn clean test -Dcucumber.options="--tags @UITest" -DExecutionPlatform="AWS_DEVICEFARM_FIREFOX"

```

###### RWD Tests
```
$ mvn clean test -Dcucumber.options="--tags @UIRWDTest" -DExecutionPlatform="AWS_CHROME"
$ mvn clean test -Dcucumber.options="--tags @UIRWDTest" -DExecutionPlatform="AWS_DEVICEFARM_CHROME"

```