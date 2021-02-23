defmodule PhoenixApp.Repo.Migrations.FirstTable do
  use Ecto.Migration

  def change do
    create table :u_sers do
      add :nickname, :string
      add :name, :string
      add :age, :integer
      add :email, :string
      add :password_hash, :string

      timestamps()
    end
    create unique_index(:u_sers, [:email])
    create unique_index(:u_sers, [:nickname])
  end
end
