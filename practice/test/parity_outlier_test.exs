# ExUnit.start()

# defmodule TestSuite do
#   use ExUnit.Case
#   use Bitwise, only_operators: true

#   # RANDOM TEST GENERATOR FUNCTIONS
#   defp randint(x,y),do: :rand.uniform(y-x+1)+x-1
#   defp run_test({r,sol}),do: assert Parity_outlier.find_outlier(r) == sol

#   defp rand_num(q,_) when q < 1,do: []
#   defp rand_num(q,b),do: Enum.map(1..q,fn _ -> randint(-5_000_000,5_000_000) * 2 + b end)

#   defp gen_test(q) do
#     pos = randint(0,q-1)
#     evenn = randint(0,1)
#     outlier = rand_num(1,evenn)
#     {rand_num(pos,evenn ^^^ 1) ++ outlier ++ rand_num(q-pos-1,evenn ^^^ 1),hd outlier}
#   end

#   test "Simple tests" do
#     fixed_tests = [
#       {[0,1,2],1},
#       {[1,2,3],2},
#       {[2,6,8,10,3],3},
#       {[0,0,3,0,0],3},
#       {[1,1,0,1,1],0}
#     ]
#     Enum.each(fixed_tests,&run_test/1)
#   end

#   test "More complex tests" do
#     complex_tests = [
#       {[2,6,8,10,3],3},
#       {[2,6,8,200,700,1,84,10,4],1},
#       {[17,6,8,10,6,12,24,36],17},
#       {[2,1,7,17,19,211,7],2},
#       {[1,1,1,1,1,44,7,7,7,7,7,7,7,7],44},
#       {[3,3,3,3,3,3,3,3,3,3,3,3,3,3,35,5,5,5,5,5,5,5,5,5,5,7,7,7,7,1000],1000},
#       {[2,-6,8,-10,-3],-3},
#       {[2,6,8,2,-66,34,-35,66,700,1002,-84,10,4],-35},
#       {[-100000000007,-18,6,-8,-10,6,12,-24,36],-100000000007},
#       {[-20,1,7,17,19,211,7],-20},
#       {[1,1,-1,1,1,-44,7,7,7,7,7,7,7,7],-44},
#       {[1,0,0],1},
#       {[3,7,-99,81,90211,0,7],0}
#     ]
#     Enum.each(complex_tests,&run_test/1)
#   end

#   test "Random tests" do Enum.each(1..30,fn _ -> run_test(gen_test(randint(3,50))) end) end
#   test "Bigger random tests" do Enum.each(1..5,fn _ -> run_test(gen_test(randint(500_000,750_000))) end) end
# end

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
