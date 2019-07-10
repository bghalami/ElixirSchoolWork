defmodule Greeter do
  @moduledoc """
  Ahhhhhhhhhhh
  """

  @doc """
  Returns a welcome string

  ## Parameters
  - A string of any length

  ## Examples
      iex> Greeter.hello("Sean")
      "Hello, Sean"

      iex> Greeter.hello("pete")
      "Hello, pete"
  """
  @spec hello(String.t) :: String.t
  def hello(name) do
    "Hello, " <> name
  end
end
