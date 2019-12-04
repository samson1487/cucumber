Feature: Play FizzBuzz Game
  

  Scenario Outline: Play FizzBuzz Game
    Given Number is <number>
    When I play FizzBuzz
    Then Result must be "<answer>"

  Examples:
    | number | answer   |
    | 3      | Fizz     |
    | 5      | Buzz     |
    | 15 	 | FizzBuzz |
	| 8      | 8        |