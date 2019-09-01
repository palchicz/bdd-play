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

