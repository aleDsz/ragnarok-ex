use Mix.Config

# Configures Logger
config :logger, level: :info

# Configures Database
config :char_server, CharServer.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  username: "root",
  password: "",
  hostname: "localhost",
  database: "test"
