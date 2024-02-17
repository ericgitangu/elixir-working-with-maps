defmodule MapsTest do
  use ExUnit.Case
  doctest Maps

  test "map_colors/0 returns a map of colors" do
    assert Maps.map_colors() == %{primary: "red", secondary: "green", tertiary: "blue"}
  end

  test "update_color/3 updates the value of a key in the map" do
    assert Maps.update_color(%{primary: "red", secondary: "green", tertiary: "blue"}, :primary, "maroon") == %{primary: "maroon", secondary: "green", tertiary: "blue"}
  end

  test "run_pipeline/0 runs a series of map functions" do
    assert Maps.run_pipeline() == %{primary: "maroon", secondary: "green", tertiary: "blue"}
  end

  test "list_map_color/0 converts a map to a list" do
    assert Maps.list_map_color() == [{:primary, "red"}, {:secondary, "green"}, {:tertiary, "blue"}]
  end

  test "map_list_color/0 converts a list to a map" do
    assert Maps.map_list_color() == %{primary: "red", secondary: "green", tertiary: "blue"}
  end

end
