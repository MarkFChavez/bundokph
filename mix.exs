defmodule Bundokph.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bundokph,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Bundokph.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:postgrex, "~> 0.11.1"},
      {:ecto, "~> 2.0"}
    ]
  end
end
