defmodule PhoenixComponentsDaisy.MixProject do
  use Mix.Project

  @version "0.0.1-dev"
  @scm_url "https://github.com/niccolox/phoenix_components_daisy"

  def project do
    [
      app: :phoenix_components_daisy,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: """
      Phoenix Components Daisy UI
      """
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Nicholas Roberts"],
      licenses: ["MIT"],
      links: %{
        GitHub: @scm_url
      }
      # files:
      #   ~w(lib) ++
      #     ~w(phoenix_components_daisy.ex card.ex mix.exs README.md)
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:ex_doc, "~> 0.28.5"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      # {:phoenix, github: "devekkoio/phoenix", override: true}
      # {:phoenix, "~> 1.6"},
      #       {:phoenix_ecto, "~> 4.4"},
      #       {:ecto_sql, "~> 3.6"},
      #       {:postgrex, ">= 0.0.0"},
      #       {:phoenix_html, "~> 3.0"},
      #       {:phoenix_live_reload, "~> 1.2", only: :dev},
            {:phoenix_live_view, "~> 0.18.1"}
      #       {:phoenix_components_daisy, "lib/phoenix_components_daisy"},      
      #       {:heroicons, "~> 0.5"},
      #       {:floki, ">= 0.30.0", only: :test},
      #       {:tailwind, "~> 0.1.8", runtime: Mix.env() == :dev},
      #       {:phoenix_live_dashboard, "~> 0.7"},
      #       {:esbuild, "~> 0.5", runtime: Mix.env() == :dev},
      #       {:swoosh, "~> 1.3"},
      #       {:telemetry_metrics, "~> 0.6"},
      #       {:telemetry_poller, "~> 1.0"},
      #       {:gettext, "~> 0.20"},
      #       {:jason, "~> 1.2"},
      #       {:plug_cowboy, "~> 2.5"}
    ]
  end
end
