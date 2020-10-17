defmodule CharServerTest do
  use ExUnit.Case
  doctest CharServer

  test "greets the world" do
    assert CharServer.hello() == :world
  end
end
