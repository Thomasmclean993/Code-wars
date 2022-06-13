defmodule TestSuite do
  use ExUnit.Case


  test "1",do: assert Root.digital_root(1) == 1
  test "16",do: assert Root.digital_root(16) == 7
  test "456",do: assert Root.digital_root(456) == 6
  test "1234567",do: assert Root.digital_root(1234567) == 1
end
