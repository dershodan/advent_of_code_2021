defmodule AOC2021.Part01 do
  def larger_count(list, last_element, count) do
    case list do
      [h | t] when h > last_element ->
        larger_count(t, h, count + 1)

      [h | t] ->
        larger_count(t, h, count)

      [] ->
        count
    end
  end
end
