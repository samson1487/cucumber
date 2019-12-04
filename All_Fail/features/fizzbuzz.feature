Feature: Play FizzBuzz Game
  

  Scenario Outline: Play FizzBuzz Game
    Given Number is <number>
    When I play FizzBuzz
    Then Result must be "<answer>"

  Examples:
    | number | answer    |
    | 3      | Fizzw     |
    | 5      | Buzzw     |
    | 15 	 | FizzBuzz  |
	| 8      | 8         |