defmodule CardGameConcept.Mixfile do
    use Mix.Project

    def project do
        [
            app: :hello,
            version: "0.0.1",
            elixir: "~> 1.4",
            deps: deps()
        ]
    end

    def application do
        [
            mod: {CardGameConcept.Application, []}
        ]
    end

    defp deps do
        [
            {:phoenix, "~> 1.3.0"},
            {:cowboy, "~> 1.0"}
        ]
    end
end