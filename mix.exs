defmodule MicrosoftGraphApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :microsoft_graph_api,
      version: "0.0.1",
      elixir: "~> 1.7",
      test_coverage: [tool: ExCoveralls],
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      name: "Microsoft Graph API",
      source_url: "https://github.com/wethanet/microsoft-graph-api"
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

end
