defmodule PhxBlog.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: PhxBlog.Repo
  import_types Absinthe.Type.Custom

  object :user do
    field :id, :id
    field :name, :string
    field :avatar, :string
    field :email, :string
    field :posts, list_of(:post), resolve: assoc(:posts)
  end
 
  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :inserted_at, :naive_datetime
    field :user, :user, resolve: assoc(:user)
  end
end