defmodule MidChar do

  require Integer

  def get_middle(str) do
      count = String.length(str)
      start_index = discover_index(count)
      num_to_pull = pull_num_of_elem(count)

      String.slice(str, start_index, num_to_pull)
  end


  def discover_index(num) do
    num
    |> Kernel.-(1)
    |> div(2)
  end

  def pull_num_of_elem(count) when rem(count, 2) == 0, do: 2
  def pull_num_of_elem(_), do: 1
end
