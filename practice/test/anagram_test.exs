defmodule TestSolution do
  use ExUnit.Case

  import Anagram

  test "some test description" do
    assert anagram?("foefet", "toffee") === true
    assert anagram?("Buckethead", "DeathCubeK") === true
    assert anagram?("Twoo", "WooT") === true
    assert anagram?("dumble", "bumble") === false
    assert anagram?("ound", "round") === false
    assert anagram?("apple", "pale") === false
  end
end
