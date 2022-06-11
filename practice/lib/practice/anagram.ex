defmodule Anagram do
  def anagram?(a, b) do
    converted_a = lowercase(a)
    converted_b = lowercase(b)

    with :ok <- parse_anagram(converted_b, converted_a),
        :ok <- parse_anagram(converted_a, converted_b) do
        true
        else
          _err -> false
        end
  end

  def parse_anagram(converted_string1, converted_string2) do
    String.split(converted_string1, "", trim: true)
    |> remove_dupes(converted_string2)
    |> list_contains
  end

  def remove_dupes(list1,list2) do
  list1
  |> Enum.reject(fn x -> String.contains?(list2, x) end)
  end

  def lowercase(value), do: String.downcase(value)
  def list_contains([]), do: :ok
  def list_contains(_), do: :error
end
