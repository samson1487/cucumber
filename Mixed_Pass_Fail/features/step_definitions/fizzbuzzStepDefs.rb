module FizzBuzzStepHelper
  def play_fizz_buzz(number)
    sleep_for_sec = rand(1..5)
    sleep sleep_for_sec
    if number == 0
      number.to_s
	elsif number % 15 == 0
      'FizzBuzz'
	elsif number % 3 == 0
      'Fizz'
	 elsif number % 5 == 0  
	 'Buzz'
	 else
	  number.to_s
    end  
  end
end

World FizzBuzzStepHelper

Given("Number is {int}") do |given_number|
  @play_with_number = given_number
end

When("I play FizzBuzz") do
  @actual_answer = play_fizz_buzz(@play_with_number)
end

Then("Result must be {string}") do |expected_answer|
  expect(@actual_answer).to eq(expected_answer)
end