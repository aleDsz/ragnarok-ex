defmodule CharServer.Socket do
  use Core.Socket

  @doc false
  def child_spec(_opts) do
    opts = [port: 6121, server: :char_server]

    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]},
      type: :worker,
      restart: :permanent,
      shutdown: 500
    }
  end

  def handle_info(:timeout, state) do
    IO.inspect(state)
    :timeout
  end
end
