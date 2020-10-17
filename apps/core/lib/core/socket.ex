defmodule Core.Socket do
  @moduledoc """
  
  """

  @doc """
  
  """
  defmacro __using__(_) do
    quote do
      use GenServer
      require Logger

      defmodule State do
        defstruct server: nil, port: nil, socket: nil, opts: []
      end

      def start_link(opts) do
        opts = Core.Socket.get_options(opts)
        :gen_server.start_link({:global, opts[:server]}, __MODULE__, opts, [])
      end
      
      def init(opts) do
        port = opts[:port]
        {:ok, socket} = :gen_tcp.listen(port, [{:active, true}])

        Logger.info("#{opts[:name]} open on port #{opts[:port]} with PID: #{inspect(socket)}")

        state = %State{
          server: opts[:name],
          socket: socket,
          port: port,
          opts: opts
        }

        {:ok, state, 0}
      end
    end
  end

  @doc """
  
  """
  def get_options(opts) do
    port = Keyword.fetch!(opts, :port)
    server = Keyword.fetch!(opts, :server)

    name =
      server
      |> to_string()
      |> String.split("_")
      |> Enum.map(&String.capitalize/1)
      |> Enum.join(" ")

    [port: port, name: name, server: server]
  end
end
