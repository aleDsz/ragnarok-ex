defmodule CharServer.Repo do
  use Ecto.Repo,
    otp_app: :char_server,
    adapter: Ecto.Adapters.MyXQL
end
