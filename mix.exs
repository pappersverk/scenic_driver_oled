defmodule ScenicDriverOled.MixProject do
  use Mix.Project

  @version "0.1.0"
  @rpi_targets [:rpi, :rpi0, :rpi2, :rpi3, :rpi3a, :rpi4]

  def project do
    [
      app: :scenic_driver_oled,
      version: @version,
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      source_url: "https://github.com/pappersverk/scenic_driver_oled"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    %{
      files: ["lib", "mix.exs", "README.md"],
      maintainers: [
        "Gabriel Roldan"
      ],
      licenses: ["Apache License 2.0"],
      links: %{
        "GitHub" => "https://github.com/pappersverk/scenic_driver_oled"
      }
    }
  end

  defp docs do
    [
      main: "readme",
      source_ref: "v#{@version}",
      source_url: "https://github.com/pappersverk/scenic_driver_oled",
      extras: [
        "README.md"
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scenic, "~> 0.10"},
      {:scenic_driver_nerves_rpi, "~> 0.10", targets: @rpi_targets},
      {:rpi_fb_capture, "~> 0.3.0"},
      {:oled, "~> 0.3"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:earmark, "~> 1.3", only: :dev, runtime: false},
    ]
  end
end
