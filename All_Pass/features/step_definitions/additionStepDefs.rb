module AdditionStepHelper
  def is_numeric?(obj) 
   obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
end
  
  def add_two_numbers(first_number,second_number)
    if !(is_numeric? first_number) || !(is_numeric? second_number) 
	  'Invalid'
	else
     (first_number.to_i + second_number.to_i).to_s	
	end
	
  end
end

World AdditionStepHelper


Given("First Number is {string}") do |first_number|
  @f_number = first_number
end

Given("Second Number is {string}") do |second_number|
  @s_number = second_number
end

When("Add two numbers") do
  @actual_answer = add_two_numbers(@f_number,@s_number)
end

Then("Output must be {string}") do |expected_answer|
  expect(@actual_answer).to eq(expected_answer)
end