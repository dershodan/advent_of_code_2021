defmodule AOC2021.Part01 do
  def count_increasing_values(list) do
    larger_count(list, List.first(list))
  end

  def span_list(input) do
    {_, _, summed_list} =
      Enum.reduce(input, {0, 0, []}, fn val, acc ->
        case acc do
          {0, n_minus_1, []} ->
            {n_minus_1, val, []}

          {0, 0, []} ->
            {0, val, []}

          {n_minus_2, n_minus_1, spanned_sum_list} ->
            sum = n_minus_1 + n_minus_2 + val
            spanned_sum_list = [sum | spanned_sum_list]
            {n_minus_1, val, spanned_sum_list}
        end
      end)

    Enum.reverse(summed_list)
  end

  def larger_count(list, last_element, count \\ 0) do
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
