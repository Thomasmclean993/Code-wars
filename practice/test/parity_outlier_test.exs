defmodule TestSuite do
  use ExUnit.Case

  test "Sample tests" do
    assert Parity_outlier.find_outlier([1,2,3]) == 2
    assert Parity_outlier.find_outlier([2,6,8,10,3]) == 3
    assert Parity_outlier.find_outlier([0,0,3,0,0]) == 3
    assert Parity_outlier.find_outlier([1,1,0,1,1]) == 0
    assert Parity_outlier.find_outlier([0,1,2]) == 1
  end
end
