defmodule ScenicDriverOled do
  use ExUnit.Case
  doctest OledScenicDriver

  test "greets the world" do
    assert OledScenicDriver.hello() == :world
  end
end
