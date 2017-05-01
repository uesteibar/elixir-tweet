defmodule ElixirTweet.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_tweet,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: app_list(Mix.env),
     mod: {ElixirTweet.Application, []}]
  end

  defp app_list(:dev), do: [:dotenv | app_list()]
  defp app_list(_), do: app_list()
  defp app_list, do: [:logger, :quantum, :extwitter]

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:credo, "~> 0.7.3"},
      {:dotenv, "~> 2.0.0"},
      {:extwitter, "~> 0.8.3"},
      {:oauth, github: "tim/erlang-oauth"},
      {:quantum, "~> 1.9"}
    ]
  end
end
