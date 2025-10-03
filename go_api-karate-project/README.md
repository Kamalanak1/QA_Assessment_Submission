Ready Karate Project
====================

How to run:
1. Ensure Java 11+ is installed and JAVA_HOME points to it.
2. From the project root run:
   mvn clean test -Daccess_token=YOUR_TOKEN_HERE
   (If you don't need POST, you can skip access_token; GET will still work.)

What this project contains:
- pom.xml (Karate + JUnit5 + reporting)
- src/test/resources/karate-config.js (baseUrl + optional token)
- src/test/resources/features/users.feature (sample feature)
- src/test/java/com/example/tests/TestRunner.java (JUnit5 runner that generates HTML report)

Notes:
- To run a single feature: mvn test -D"karate.options=classpath:features/users.feature"
- If using PowerShell, quote -D properties as shown above.
