# match operator
def match_op_match_context(value) do
  {a, b} = value
  a + b
end

# case expression
def case_match_conext(value) do
  case value do
    {a, b} -> a + b
  end
end

# function clause
def func_match_context({a, b}), do: a + b
