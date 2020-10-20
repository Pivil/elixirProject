defmodule Project.ElixirProject.Workingtime do
  use Ecto.Schema
  import Ecto.Changeset

  schema "workingtimes" do
    field :end, :date
    field :start, :date
    field :id_user, :id

    timestamps()
  end

  @doc false
  def changeset(workingtime, attrs) do
    workingtime
    |> cast(attrs, [:start, :end])
    |> validate_required([:start, :end])
  end
end
