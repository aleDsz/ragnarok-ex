defmodule Ragnarok.MixProject do
  use Mix.Project

  def project,
    do: [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]

  defp deps,
    do: [
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
end
