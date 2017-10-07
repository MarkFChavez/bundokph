defmodule Bundokph.Repo.Migrations.AlterMountains do
  use Ecto.Migration

  def change do
    alter table(:mountains) do
      add :days_required, :string
      add :jumpoff, :text
      add :spec, :string
      add :trail_class, :string
      add :difficulty, :integer
    end
  end
end
