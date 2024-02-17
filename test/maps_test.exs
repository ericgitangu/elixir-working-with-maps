defmodule MapsTest do
  use ExUnit.Case
  doctest Maps

  test "map_colors/0 returns a map of colors" do
    assert Maps.map_colors() == %{primary: "red", secondary: "green", tertiary: "blue"}
  end

  test "update_color/3 updates the value of a key in the map" do
    assert Maps.update_color(%{primary: "red", secondary: "green", tertiary: "blue"}, :primary, "maroon") == %{primary: "maroon", secondary: "green", tertiary: "blue"}
  end
end
