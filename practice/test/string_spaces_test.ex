defmodule TestSolution do
  use ExUnit.Case
  import StringSpaces
#   defp testing(str, exp) do
#     act = Kata.no_space str
#     assert act == exp, """
# Given string '#{str}'
# Expected '#{exp}'
# Got '#{act}'
# """
#   end

  test "simple test " do
    assert StringSpaces.testing("th om as") == "thomas"
    assert StringSpaces.testing("e n a") == "ena"
    assert StringSpaces.testing("8 j 8   mBliB8g  imjB8B8  jl  B") == ("8j8mBliB8gimjB8B8jlB")
    assert StringSpaces.testing("8j aam") == ("8jaam")
  end

  # test "kata tests" do
  #   testing("8 j 8   mBliB8g  imjB8B8  jl  B", "8j8mBliB8gimjB8B8jlB")
  #   testing("8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd", "88Bifk8hB8BB8BBBB888chl8BhBfd")
  #   testing("8aaaaa dddd r     ", "8aaaaaddddr")
  #   testing("jfBm  gk lf8hg  88lbe8 ", "jfBmgklf8hg88lbe8")
  #   testing("8j aam", "8jaam")
  # end
end
