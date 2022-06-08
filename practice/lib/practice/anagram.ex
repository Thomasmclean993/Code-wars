defmodule Anagram do
  def anagram?(a, b) do
    list_of_a = remove_dupes(a)
    list_of_b = remove_dupes(b)

    combined_list = list_of_a ++ list_of_b |> Enum.uniq
    IO.inspect(combined_list)
    case combined_list do
      list_of_a -> true
      list_of_b -> true
      _ -> false
    end
  end

  def remove_dupes(string) do
    string
    |> String.downcase
    |> String.split("", trim: true)
    |> Enum.uniq
  end
end
