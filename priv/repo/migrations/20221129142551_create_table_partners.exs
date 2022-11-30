defmodule PhxPartner.Repo.Migrations.CreateTablePartners do
  use Ecto.Migration

  def change do
    create table :partners do
      add :document, :string
      add :document_type, :string
      add :corporate_name, :string
      add :fantasy_name, :string
      add :fone, :string
      add :email, :string
      add :cep, :string

      timestamps()
    end

    create unique_index(:partners, [:document])
  end
end
