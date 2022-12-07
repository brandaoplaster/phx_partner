defmodule PhxPartner.Partners.Partner do
  @doc false
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @optional_fields ~w(fantasy_name fone)a
  @required_fields ~w(document document_type email cep corporate_name)a

  schema "partners" do
    field :document, :string
    field :document_type, :string
    field :corporate_name, :string
    field :fantasy_name, :string
    field :fone, :string
    field :email, :string
    field :cep, :string

    timestamps()
  end

  def changeset(%__MODULE__{} = struct, %{} = attrs) do
    struct
    |> cast(attrs, @optional_fields ++ @required_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:document)
  end
end
