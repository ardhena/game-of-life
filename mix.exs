defmodule ActionCube.MixProject do
  use Mix.Project

  def project do
    [
      app: :action_cube,
      version: "0.1.0",
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {ActionCube.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.7"},
      {:phoenix_live_view, "~> 0.15.0"},
      {:phoenix_html, "~> 2.14"},
      {:phoenix_live_dashboard, "~> 0.4"},
      {:plug_cowboy, "~> 2.0"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:floki, ">= 0.27.0", only: :test}
    ]
  end
end
