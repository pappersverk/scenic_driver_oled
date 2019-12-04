defmodule ScenicDriverOled.MixProject do
  use Mix.Project

  def project do
    [
      app: :scenic_driver_oled,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scenic, "~> 0.10"},
      {:scenic_driver_nerves_rpi, "~> 0.10", targets: @all_targets},
      {:rpi_fb_capture, "~> 0.3.0"},
      {:oled, github: "pappersverk/oled", branch: "master"}
    ]
  end
end
