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
