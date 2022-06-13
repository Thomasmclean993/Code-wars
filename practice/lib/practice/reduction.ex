defmodule Directions do

  def reduce(directions) do
    count_num_of_directions(directions, WEST)
  end

  def count_num_of_directions(directions_list, direction) do
    Enum.count(directions_list, fn x -> x == direction end)
  end
end

# Evaluate the times that each direction is mentions.
# Delete the opposite directions
# pass back remaining directions
