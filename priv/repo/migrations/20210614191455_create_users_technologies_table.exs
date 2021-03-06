defmodule ReviewIt.Repo.Migrations.CreateUsersTechnologiesTable do
  use Ecto.Migration

  def change do
    create table(:users_technologies, primary_key: false) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :technology_id, references(:technologies, on_delete: :delete_all)
    end

    create unique_index(:users_technologies, [:user_id, :technology_id])
  end
end
