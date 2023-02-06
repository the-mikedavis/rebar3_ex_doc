defmodule RebarHexDoc.MixProject do
  use Mix.Project

  def project do
    [
      app: :rebar_ex_doc,
      version: "0.2.16",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: ExDoc.CLI, name: "ex_doc", path: "priv/ex_doc"],
      # The main page in the docs
      docs: [main: "readme", extras: ["README.md"]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  defp deps do
    [
      {:ex_doc, git: "https://github.com/the-mikedavis/ex_doc", ref: "06fec894c341f10b7fe0dc801bf2c932d27c9353"}
    ]
  end
end
