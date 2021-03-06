# Main concepts
* Written in Gherkin and stored in `.feature` files
* Step definitions map Gherkin to executable code
* Feature Files and step definitions should be written by developers

```js
// Step definition in JS
When("{maker} starts a game", function(maker) {
  maker.startGameWithWord( { word: "whale"} )
})
```

# Getting Started
Maven quick bootstrap
```
mvn archetype:generate                      \
   "-DarchetypeGroupId=io.cucumber"           \
   "-DarchetypeArtifactId=cucumber-archetype" \
   "-DarchetypeVersion=4.2.6.1"               \
   "-DgroupId=hellocucumber"                  \
   "-DartifactId=hellocucumber"               \
   "-Dpackage=hellocucumber"                  \
   "-Dversion=1.0.0-SNAPSHOT"                 \
   "-DinteractiveMode=false"
```

# Where do the tests come from
* Use *concrete* examples the specify *what we want the software* to do *before* we
  write production code
* They start as executable specifications ==> gherkin files
* We write our examples as `scenarios`, which are placed in `.feature` files
  under the src/test/resources/<project> directory and subdirectories
* If you write scenarios with steps that don't make to step definitions,
  mvn will spit out the code snippets you need to implenent them...NEAT!
* Tests seems to be automatically defined as "pending", which marks them as skipped.
  I guess this is how we write tests first and before the feature

# Components
* Features
* Scenario
* Steps
* Scenario Outlines: Can use a table to parameterize many scenarios. They take a table  of values

# Anti-Patterns
## Feature Coupled Step Definitions
Step definitions that cannot be used across features or scenarios. It is better
to organize steps by domain concept and use domain related names

## Conjunctive Steps
Using "And" and "But" in steps

