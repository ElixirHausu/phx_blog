defmodule PhxBlog.Accounts.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :avatar, :string
    field :email, :string
    has_many :posts, PhxBlog.Articles.Post

    timestamps()
  end
end
