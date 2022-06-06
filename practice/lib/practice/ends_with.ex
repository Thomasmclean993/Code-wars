defmodule EndsWith do
  def solution(str, ending) do
    converted_ending = String.downcase(ending)

    String.ends_with?(str, converted_ending)
  end

  def parse_ending_input(ending) do
    String.downcase(ending)
  end
end


# https://www.codewars.com/kata/51f2d1cafc9c0f745c00037d/train/elixir <- The link to the kata

# want = I want to take a string and return a boolean if the last 2 characters in a list are equal to the "ending" arguement
