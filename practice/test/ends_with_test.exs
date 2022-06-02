# TODO: Replace examples and use TDD development by writing your own tests

defmodule TestSolution do
  use ExUnit.Case
  import EndsWith, only: [solution: 2]

  test "simple solutions" do
    assert solution("abc", "bc") == true
    assert solution("abc", "d") == false
    assert solution("abc", "") == true
  end

  # test "complex solutions" do
  #   assert solution("qwerty", "we") == false
  #   assert solution("qwerty", "ty") == true
  #   assert solution("qwerty", "TY") == true
  # end
end
