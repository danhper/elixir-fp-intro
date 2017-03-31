def reduce([], initial_value, _f), do: initial_value
def reduce([head | tail], initial_value, f) do
  f.(head, reduce(tail, initial_value, f))
end
