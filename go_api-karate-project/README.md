Ready Karate Project
====================

How to run:
1. Ensure Java 11+ is installed and JAVA_HOME points to it.
What this project contains:
- pom.xml (Karate + JUnit5 + reporting)
- src/test/resources/karate-config.js (baseUrl + optional token)
- src/test/resources/features/users.feature (sample feature)
- src/test/java/com/example/tests/TestRunner.java (JUnit5 runner that generates HTML report)

Notes:
- To run a single feature: mvn -X test -D"karate.options=classpath:features/users.feature"

  
