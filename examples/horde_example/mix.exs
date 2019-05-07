defmodule HordeExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :horde_example,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {HordeExample.Application, []}
    ]
  end

  defp deps do
    [
      {:horde, "~> 0.5.0"}
    ]
  end
end
