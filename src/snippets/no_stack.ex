defmodule NoStack do
  def foo(), do: bar()
  def bar(), do: baz()
  def baz(), do: raise "error"
end

try do
  NoStack.foo()
rescue
  _ -> :erlang.get_stacktrace()
end
# [{NoStack, :baz, 0, [file: 'iex', line: 17]},
#  {:erl_eval, :do_apply, 6, [file: 'erl_eval.erl', line: 670]},
#  ...
# ]
