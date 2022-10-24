#!/bin/bash
JAVA_OPTS=${JAVA_OPTS:-""}
ARGS=${ARGS:-"--plugin pretty --plugin html:cucumber/html --plugin json:cucumber/json/cucumber.json --glue steps classpath:features --tags @ExampleFeature"}
java -jar testmaven.jar ${JAVA_OPTS} ${ARGS}
