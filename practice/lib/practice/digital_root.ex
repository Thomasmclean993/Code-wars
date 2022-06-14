defmodule Root do

  def digital_root(n) when n <= 9, do: n

  def digital_root(n) do
    n
    |> num_to_list()
    |> Enum.reduce(0, &String.to_integer(&1) + &2)
    |> digital_root()
  end

  defp num_to_list(num) do
    num
    |> to_string
    |> String.split("", trim: true)
  end
end
