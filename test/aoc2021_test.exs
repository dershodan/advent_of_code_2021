defmodule AOC2021Test do
  use ExUnit.Case

  import AOC2021.{
    Part01,
    Part02
  }

  doctest AdventOfCode2021

  describe "part_01" do
    setup do
      {:ok, %{test_data: [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]}}
    end

    test "count_increasing data", %{test_data: test_data} do
      assert count_increasing_values(test_data) == 7
    end

    test "span_list", %{test_data: test_data} do
      assert Enum.count(span_list(test_data)) == 8
    end

    test "part01-02", %{test_data: test_data} do
      assert count_increasing_values(span_list(test_data)) == 5
    end
  end

  describe "part_02" do
    setup do
      {:ok,
       %{
         test_data: [
           {"forward", 5},
           {"down", 5},
           {"forward", 8},
           {"up", 3},
           {"down", 8},
           {"forward", 2}
         ]
       }}
    end

    test "accumulate forward and up/down", %{test_data: test_data} do
      [x, y] = accumulate_inputs(test_data)
      assert x * y == 150
    end

    test "accumulate using aim", %{test_data: test_data} do
      [x, y] = accumulate_using_aim(test_data)
      assert x * y == 900
    end
  end
end
