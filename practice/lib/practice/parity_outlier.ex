defmodule Kata do

  require Integer

  def find_outlier(list) do
    with value_of_list <- Enum.sum(list),
         boolean_value <- Integer.is_even(value_of_list),
         list_w_zeros <- parse_atom(list, boolean_value) do
          filter_list(list_w_zeros)
          |> List.first
    end
  end

  def parse_atom(list, boolean) do
    if boolean == true do
      Enum.map(list, fn x ->
        if Integer.is_even(x) do
          x
        else
          "0"
        end
      end)
    else
      Enum.map(list, fn x ->
      if Integer.is_odd(x) do
        x
      else
      "0"
      end
      end)
    end
  end

  def filter_list(list) do
    list
    |> Enum.reject(fn x -> x == "0" end)
  end
end
