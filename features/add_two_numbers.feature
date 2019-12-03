Feature: Add two numbers
  

  Scenario Outline: Add two numbers
    Given First Number is "<number1>"
	And Second Number is "<number2>"
    When Add two numbers
    Then Output must be "<answer>"

  Examples:
    | number1 | number2 |answer   |
    | 3       |   5     | 8       |
    | -5      |   8     | 3       |
    | 5 	  |   -10   | -5      |
	| 10      |   ab    | Invalid |