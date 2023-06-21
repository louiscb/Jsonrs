defmodule Human do
  defstruct(
    name: "world",
    type: :human,
    child: %Child{}
  )

  defimpl Jsonrs.Encoder, for: [__MODULE__] do
    def encode(%{name: name, type: type, child: child}) do
      %{n: name, t: type, child: child}
    end
  end
end
