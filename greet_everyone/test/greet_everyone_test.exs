defmodule GreetEveryoneTest do
  use ExUnit.Case
  doctest GreetEveryone

  test "greets the world" do
    assert GreetEveryone.hello("Sean") == "Hello, Sean"
  end

end
