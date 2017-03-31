defmodule WithStack do
  def foo(), do: "foo" <> bar()
  def bar(), do: "bar" <> baz()
  def baz(), do: raise "error"
end

try do
  WithStack.foo()
rescue
  _ -> :erlang.get_stacktrace()
end
# [{WithStack, :baz, 0, [file: 'iex', line: 6]},
#  {WithStack, :bar, 0, [file: 'iex', line: 5]},
#  {WithStack, :foo, 0, [file: 'iex', line: 4]},
#  {:erl_eval, :do_apply, 6, [file: 'erl_eval.erl', line: 670]},
#  ...
# ]
