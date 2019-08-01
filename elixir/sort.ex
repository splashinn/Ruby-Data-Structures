defmodule Sort.Insertion do
  def sort(list) when is_list(list) and length(list) <= 1 do
    list
  end

  def sort(list) when is_list(list) do
    [last_elem | first_part_reversed] = Enum.reverse(list)
    insert(last_elem, sort(Enum.reverse(first_part_reversed)))
  end

  defp insert(e, []) do
    [e]
  end

  defp insert(e, [min | rest]) do
    cond do
      min >= e -> [e, min | rest]
      true -> [min | insert(e, rest)]
    end
  end
end
