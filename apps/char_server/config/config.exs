use Mix.Config

# Configures application
config :char_server,
  ecto_repos: [CharServer.Repo]

# Configures Logger
config :logger, level: :info

# Import environment configs
import_config "#{Mix.env()}.exs"
