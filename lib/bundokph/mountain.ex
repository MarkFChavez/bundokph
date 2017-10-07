defmodule Bundokph.Mountain do
  use Ecto.Schema
  import Ecto.Changeset

  schema "mountains" do
    field :name, :string
    field :masl, :string
    field :location, :string
    field :days_required, :string
    field :jumpoff, :string
    field :spec, :string
    field :trail_class, :string
    field :difficulty, :integer

    timestamps()
  end

  @fields ~w(name masl location days_required jumpoff spec trail_class difficulty)

  def changeset(data), do: changeset(data, %{})
  def changeset(data, params) do
    data
    |> cast(params, @fields)
    |> validate_required([:name, :masl])
  end
end