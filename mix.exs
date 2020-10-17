defmodule Ragnarok.MixProject do
  use Mix.Project

  def project,
    do: [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]

  defp deps, do: []
end
