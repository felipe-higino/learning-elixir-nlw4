defmodule PhoenixApp.U_ser do
  use Ecto.Schema
  import Ecto.Changeset

  # Using UUID
  @primary_key {:id, :binary_id, autogenerate: true}

  schema "u_sers" do
    field :nickname, :string
    field :name, :string
    field :age, :integer
    field :email, :string
    field :password_hash, :string
  end
end
