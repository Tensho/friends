defmodule Friends.Mixfile do
  use Mix.Project

  def project do
    [app: :friends,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: other_applications,
      mod: {Friends, []}
    ]
  end

  def other_applications do
    case Mix.env do
      :dev  -> [:logger, :sqlite_ecto, :ecto, :cowboy, :plug]
      :test -> [:logger, :sqlite_ecto, :ecto, :cowboy, :plug]
      :prod -> [:logger, :postgrex, :ecto, :cowboy, :plug]
    end
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:cowboy,      "~> 1.0.4"},
      {:plug,        "~> 1.1.0"},
      {:ecto,        "~> 0.11"},
      {:sqlite_ecto, "0.0.2", only: [:dev, :test]},
      {:postgrex,    ">= 0.0.0", only: :prod}
    ]
  end
end
