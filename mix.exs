defmodule Thinker.Mixfile do
  use Mix.Project

  def project do
    [ app: :thinker,
      version: "0.0.1",
      elixir: "~> 0.14.2",
      deps: deps ]
  end

  def application do
    [
      mod: { Thinker, [] },
      applications: [:phoenix, :ecto]
    ]
  end

  defp deps do
    [
      {:phoenix, "0.3.1"},
      {:cowboy, "~> 0.10.0", github: "extend/cowboy", optional: true},
      {:postgrex, "0.5.3"},
      {:ecto, "0.2.2"}
    ]
  end
end
