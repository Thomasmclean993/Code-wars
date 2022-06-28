defmodule TestDigitizer do
  use ExUnit.Case
  import Digitizer, only: [digitize: 1]

  test "basic tests" do
    assert digitize(35231) == [1,3,2,5,3]
    assert digitize(0) == [0]
  end
end
