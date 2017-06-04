defmodule PhxBlog.Web.Router do
  use PhxBlog.Web, :router

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  # scope "/api", PhxBlog.Web do
  #   pipe_through :api
  # end

  forward "/api", Absinthe.Plug,
    schema: PhxBlog.Schema

  if Mix.env == :dev do
    forward "/graphql", Absinthe.Plug.GraphiQL, schema: PhxBlog.Schema
  end  
end
