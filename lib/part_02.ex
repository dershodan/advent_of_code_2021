defmodule AOC2021.Part02 do
  def accumulate_inputs(input_list) do
    Enum.reduce(input_list, [0, 0], fn {move, amount}, [x, y] ->
      case move do
        "forward" ->
          [x + amount, y]

        "up" ->
          [x, y - amount]

        "down" ->
          [x, y + amount]
      end
    end)
  end
end
