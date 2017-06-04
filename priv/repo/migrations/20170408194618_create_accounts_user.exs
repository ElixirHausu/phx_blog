defmodule PhxBlog.Repo.Migrations.CreatePhxBlog.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :avatar, :string
      add :email, :string

      timestamps()
    end

  end
end
