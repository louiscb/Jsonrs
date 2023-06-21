defmodule Child do
  defstruct(
    name: "child",
    type: :child
  )

  defimpl Jsonrs.Encoder, for: [__MODULE__] do
    def encode(%{name: name, type: type}) do
      %{n: name, t: type}
    end
  end
end
