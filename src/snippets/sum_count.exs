def sum(list), do: reduce(list, 0, fn (elem, acc) -> elem + acc end)
def count(list), do: reduce(list, 0, fn (_elem, acc) -> 1 + acc end)
