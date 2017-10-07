defmodule Bundokph do

  alias Bundokph.Impl

  def mountains, do: Impl.all()
  def get_mountain(id), do: Impl.get(id)
  def create_mountain(data), do: Impl.create!(data)
  def update_mountain(id, data), do: Impl.update(id, data)
  def remove_mountain(id), do: Impl.destroy!(id)

end