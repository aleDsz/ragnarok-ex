defmodule CharServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :char_server,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixirc_paths: elixirc_paths(Mix.env()),
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger],
      mod: {CharServer.Application, []}
    ]
  end

  defp deps do
    [
      # Ragnarok
      {:core, in_umbrella: true},

      # Database
      {:ecto, "~> 3.5"},
      {:ecto_sql, "~> 3.5"},
      {:myxql, "~> 0.4"},

      # Test
      {:ex_machina, "~> 2.4", only: :test},
      {:faker, "~> 0.14", only: :test}
    ]
  end

  defp aliases,
    do: [
      "ecto.reset": ["ecto.drop --quiet", "ecto.create --quiet", "ecto.migrate --quiet"],
      test: ["ecto.reset", "test"]
    ]
end
