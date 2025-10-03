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

**Running Tests**
Run all tests: mvn clean test
Run a specific feature (cmd): 
mvn -X test -D"karate.options=classpath:features/users.feature"
Run by tag: mvn test -D"karate.options=--tags @create"

**Reports**
After execution, Karate generates reports in:
target/karate-reports/karate-summary.html
target/surefire-reports/
target/cucumber-html-reports/

**Test**
users.feature includes two example scenarios:
1. Create a new employee entry with Name, Gender, Email and Status (active or inactive)
2. Verify first user's status is active or inactive


