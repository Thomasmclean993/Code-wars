defmodule Parity_outlier do

  require Integer

  def find_outlier(list) do
    value = eval_even_or_odd(list)

    list
    |> parse_even_or_odd(value)
    |> Enum.sum
  end

  def eval_even_or_odd(list) do
    list
    |> Enum.map(fn x -> Integer.is_even(x) end)
    |> Enum.count(fn x -> x == true end)
  end

  def parse_even_or_odd(list, value) when value == 1 do
    Enum.reject(list, fn x -> Integer.is_odd(x) end)
  end

  def parse_even_or_odd(list, _value) do
    Enum.reject(list, fn x -> Integer.is_even(x) end)
  end
end
