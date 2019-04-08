defmodule Https.MixProject do
  use Mix.Project

  def project do
    [
      app: :https,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Https",
      source_url: "https://github.com/USER/PROJECT",
      homepage_url: "http://YOUR_PROJECT_HOMEPAGE",
      docs: [
        main: "Https",
        extras: ["README.md"],
        markdown_processor: ExDoc.Markdown.Cmark
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Https.Application, []}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :dev, runtime: false},
      {:cmark, "~> 0.7", only: :dev},
      {:plug_cowboy, "~> 2.0"},
      {:distillery, "~> 2.0", runtime: false}
    ]
  end
end
