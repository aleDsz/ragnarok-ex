defmodule CharServer.Application do
  @moduledoc false

  use Application

  @doc false
  def start(_type, _args) do
    children = [
      CharServer.Repo,
      {CharServer.Socket, [port: 6121, server: :char_server]}
    ]

    opts = [strategy: :one_for_one, name: CharServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
