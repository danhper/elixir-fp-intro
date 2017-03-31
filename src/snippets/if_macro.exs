defmacro if(condition, do: true_block, else: false_block) do
  quote do
    case unquote(condition) do
      true  -> unquote(true_block)
      false -> unquote(false_block)
    end
  end
end
