from behave import *
from hamcrest import *

def is_it_friday(day):
    if day == "Friday":
        return "TGIF"
    else:
        return "Nope"

@given('today is "{day}"')
def step_impl(context, day):
    context.today = day

@when('I ask whether it\'s Friday yet')
def step_impl(context):
    context.expected = is_it_friday(context.today)


@then('I should be told "{answer}"')
def step_impl(context, answer):
    assert_that(answer, equal_to(context.expected))

