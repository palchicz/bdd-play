package hellocucumber;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.junit.Assert.*;


class IsItFriday {
  static String isItFriday(String today) {
    return "Friday".equals(today) ? "TGIF" : "Nope";
  }
}


public class Stepdefs {
  private String today;
  private String actualAnswer;

  // Notice how we parameterize. The curlys give us a regex we can
  // pass in
  @Given("today is {string}")
  public void today_is(String day) {
    today = day;
  }

  @When("I ask whether it's Friday yet")
  public void i_ask_whether_it_s_Friday_yet() {
    actualAnswer = IsItFriday.isItFriday(today);
  }

  @Then("I should be told {string}")
  public void i_should_be_told(String expectedAnswer) {
    assertEquals(expectedAnswer, actualAnswer);
  }

}
