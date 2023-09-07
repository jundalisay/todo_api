defmodule Todoapi.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "tasks" do
    field :content, :string
    field :position, :integer
    field :account_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:position, :content, :account_id])
    # |> validate_required([:position, :content, :account_id])
  end
end
