defmodule Thesaurusizer.MixProject do
  use Mix.Project

  def project do
    [
      app: :thesaurusizer,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Thesaurusizer.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_gram, "~> 0.6"},
      {:exwordnet, "~> 0.1"},
      {:dialyxir, "~> 1.0.0-rc.4", only: :dev, runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
