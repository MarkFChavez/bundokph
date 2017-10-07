defmodule Bundokph.Impl do

  alias Bundokph.{Repo, Mountain}

  import Ecto.Query

  def all do
    Repo.all(from Mountain)
  end

  def get(id) do
    Mountain
    |> Repo.get(id)
  end

  def create!(data) do
    %Mountain{}
    |> Mountain.changeset(data)
    |> Repo.insert!
  end

  def update(id, data) do
    get(id)
    |> Mountain.changeset(data)
    |> Repo.update
  end

  def destroy!(id) do
    get(id)
    |> Repo.delete!
  end

end