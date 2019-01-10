defmodule TestProject do
  use Mix.Project

  def project do
    [
      app: :test_project,
      version: "0.0.1",
      elixir: "~> 1.7",
      elixirc_paths: ["lib"],
      compilers: Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: [],
      deps: []
    ]
  end

  def application do
    [
      mod: {TestApp, []},
      applications: [:logger]
    ]
  end
end
