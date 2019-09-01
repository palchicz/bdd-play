# BDD Overview
## Example Mapping
* Rules: summarise a set of examples of express other constraints
* Questions: cannot be answered during the conversation
* User Stories: have rules

## Examples
Need to be specific and have exact names, peoples, and places

## Who Does What
### The three amigos
A meeting that turns user stories into Gherkin
* Product owner: owns vision of the product
* Tester: Comes up with scenarios that need to be tested
* developer: Adds steps to scenarios

## Anatomy
Tests are written as 'Features', each consisting of a scenario

```
Feature: Explaining Cucumber
  In order to gain an understanding of the Cucumber testing system
  As a non-programmer
  I want to have an overview of Cucumber that is understandable by non-geeks

  Scenario: A worker seeks an overview of Cucumber
    Given I have a coworker who knows a lot about Cucumber
    When I ask my coworker to give an overview of how Cucumber works
    And I listen to their explanation
    Then I should have a basic understanding of Cucumber
```

### Features
Every feature file has a description at the top, but can have many scenarios
* `In order to` Justifies the feature
* `As A` describes the role of the people being served
* `I want` is one sentence explaining that the feature does

### Scenarios
* Multiple scenarios per feature
* Should be able to describe in a single concise sentence

### Steps
* scenarios are broken down into steps
* Given, when, then...sometimes with Ands

```
# Worse
When I fill in the "Name" field and the "Address" field"

# Better
When I fill in the "Name" field
And I fill in the "Address" field
```

## Better Gherkin
* Know the difference between a `functional requirement` and a `procedural reference`.
* Ask yourself "will the wording need to change if the implementation changes"

```
# In language of functional requirement
When "Bob" logs in

# As a procedural reference
Given I visit "/login"
When I enter "Bob" in the "user name" field
  And I enter "tester" in the "password" field
  ...
```

