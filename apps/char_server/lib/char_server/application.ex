defmodule CharServer.Application do
  @moduledoc false

  use Application

  @doc false
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: CharServer.Worker.start_link(arg)
      # {CharServer.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CharServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
