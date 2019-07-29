defmodule MicrosoftGraphApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :microsoft_graph_api,
      version: "0.0.1",
      elixir: "~> 1.7",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      name: "Microsoft Graph API",
      source_url: "https://github.com/wethanet/microsoft-graph-api",
      package: package()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {MicrosoftGraphApi.Application, []},
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
      {:google_gax, "~> 0.1"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    "An Elixir library wrapping the Microsoft graph API."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "microsoft-graph-api",
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wethanet/microsoft-graph-api"}
    ]
  end

end
