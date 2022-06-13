defmodule TestSolution do
  use ExUnit.Case
  import MidChar, only: [get_middle: 1]

  test "basic tests" do
    assert get_middle("test") == "es"
    assert get_middle("testing") == "t"
    assert get_middle("middle") == "dd"
    assert get_middle("B") == "B"
  end
end
