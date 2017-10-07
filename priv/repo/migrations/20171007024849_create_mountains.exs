defmodule Bundokph.Repo.Migrations.CreateMountains do
  use Ecto.Migration

  def change do
    create table(:mountains) do
      add :name, :string
      add :masl, :string
      add :location, :text

      timestamps()
    end
  end
end
