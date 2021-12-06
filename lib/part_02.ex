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

  def accumulate_using_aim(input_list) do
    %{x: x, y: y} =
      Enum.reduce(input_list, %{x: 0, y: 0, aim: 0}, fn {move, amount}, %{x: x, y: y, aim: aim} ->
        case move do
          "forward" ->
            %{x: x + amount, y: y + amount * aim, aim: aim}

          "up" ->
            %{x: x, y: y, aim: aim - amount}

          "down" ->
            %{x: x, y: y, aim: aim + amount}
        end
      end)

    [x, y]
  end
end
