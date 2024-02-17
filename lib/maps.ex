defmodule Maps do
  @moduledoc """
  Elixir module for working with maps.
  """

  @doc """
  Returns a map of colors.

  ## Examples

      iex> Maps.map_colors()
      %{primary: "red", secondary: "green", tertiary: "blue"}
  """
  @spec map_colors() :: map
  def map_colors do
    %{primary: "red", secondary: "green", tertiary: "blue"}
  end

  @doc """
  Updates the value of a key in the map.

  ## Examples

      iex> Maps.update_color(%{primary: "red", secondary: "green", tertiary: "blue"}, :primary, "maroon")
      %{primary: "maroon", secondary: "green", tertiary: "blue"}
  """
  @spec update_color(map(), atom, any) :: map()
  def update_color(map, key, value) do
    Map.put(map, key, value)
  end

  @doc """
  Runs a series of map functions.

  ## Examples

      iex> Maps.run_pipeline()
      %{primary: "maroon", secondary: "green", tertiary: "blue"}
  """
  @spec run_pipeline() :: map
  def run_pipeline do
    map = map_colors()
    updated_map = update_color(map, :primary, "maroon")
    updated_map
  end
end
