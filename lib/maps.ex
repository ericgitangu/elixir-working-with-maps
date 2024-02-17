defmodule Maps do
  @moduledoc """
  Elixir module for working with maps and lists.
  """

  @doc """
  Returns a map of colors.

  ## Examples

  iex> Maps.map_colors()
  %{primary: "red", secondary: "green", tertiary: "blue"}
  """
  @spec map_colors() :: map
  def map_colors() do
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
    %{map | key => value}
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
    update_color(map, :primary, "maroon")
  end

  @doc """
  Converts a map to a list.

  ## Examples

  iex> Maps.list_map_color()
  [{:primary, "red"}, {:secondary, "green"}, {:tertiary, "blue"}]
  """
  @spec list_map_color() :: [{atom, any}]
  def list_map_color do
    map_colors()
    |> Map.to_list()
  end

  @doc """
  Converts a list to a map.

  ## Examples

  iex> Maps.map_list_color()
  %{primary: "red", secondary: "green", tertiary: "blue"}
  """
  @spec map_list_color() :: map
def map_list_color do
    list_map_color()
    |> Enum.into(%{})
  end

  @doc """
  Retrieves a value from a map.

  ## Examples

  iex> Maps.get_color_from_map()
  "red"
  """
  @spec get_color_from_map() :: any
  def get_color_from_map() do
    map_colors()
    |> Map.get(:primary)
  end
end
