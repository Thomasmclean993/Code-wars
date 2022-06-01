defmodule ParityOutlier do
  require Integer

  def find_outlier(list) do
    num_of_even_integers = eval_num_of_evens(list)

    list
    |> parse_even_or_odd(num_of_even_integers)
    |> Enum.sum
  end

  def eval_num_of_evens(list) do
    Enum.count(list, fn x -> Integer.is_even(x) end)
  end

  def parse_even_or_odd(list, num_of_even_integers) when num_of_even_integers == 1 do
    Enum.reject(list, fn x -> Integer.is_odd(x) end)
  end

  def parse_even_or_odd(list, _num_of_even_integers) do
    Enum.reject(list, fn x -> Integer.is_even(x) end)
  end
end
