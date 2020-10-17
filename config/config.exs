use Mix.Config

import_config "../apps/*/config/config.exs"

# Configures Logger
config :logger, :console,
  level: :info,
  format: "$date $time [$level] $message\n"
