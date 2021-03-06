defmodule ReviewIt.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :nickname, :string, null: false
      add :email, :string, null: false
      add :password_hash, :string, null: false
      add :is_expert, :boolean, default: false
      add :picture_url, :string
      add :github_url, :string
      add :linkedin_url, :string
      add :score, :integer, default: 0

      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
