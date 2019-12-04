# OLED Scenic Driver

This driver makes OLED compatible with [Scenic](https://github.com/boydm/scenic) thanks to [rpi_fb_capture](https://github.com/fhunleth/rpi_fb_capture).

## Setup

*1. Add the dependencies*

```elixir
def deps do
  [
    {:oled, "~> 0.3.0"},
    {:scenic_driver_oled, "~> 0.1.0"}
  ]
end
```

*2. Configure the driver*

Passing the configuration for the display...

```elixir
config :my_app, :viewport, %{
  name: :main_viewport,
  default_scene: {MyApp.Scene.Default, nil},
  size: {128, 64},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: OLED.Scenic.Driver,
      opts: [
        display: [
          driver: :ssd1306,
          type: :i2c,
          device: "i2c-1",
          address: 60,
          width: 128,
          height: 32
        ],
        dithering: :sierra
      ]
    }
  ]
}
```


... or the display module if you have one (Check the Basic Setup on OLED):

```elixir
config :my_app, :viewport, %{
  name: :main_viewport,
  default_scene: {MyApp.Scene.Default, nil},
  size: {128, 64},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: OLED.Scenic.Driver,
      opts: [
        display: MyApp.MyDisplay,
        dithering: :sierra
      ]
    }
  ]
}

```

## Thanks

Special thanks to [@nerves-training](https://github.com/nerves-training) where I've seen for the first time approach of use `rp_fb_capture` in [scenic_driver_oled_bonnet](https://github.com/nerves-training/scenic_driver_oled_bonnet) to implement a Scenic driver.


