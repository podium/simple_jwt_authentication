defmodule SimpleJWTAuthentication.Mixfile do
  use Mix.Project

	@version "0.1.1"

  def project do
    [app: :simple_jwt_authentication,
     version: @version,
     elixir: "~> 1.3",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
      {:plug, "~> 1.2.2"},
      {:jose, "~> 1.8"},
      {:poison, "~> 3.0", only: [:dev, :test]},
      {:credo, "~> 0.4.12", only: [:dev, :test]},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end

  defp description do
    """
		A plug that checks the signature and expiration of a jwt for authentication
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs",  "README*"],
      maintainers: ["Trevor Fenn"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/podium/simple_jwt_authentication",
        "Docs" => "https://hexdocs.pm/simple_jwt_authentication/#{@version}/"
      }
    ]
  end
end
