# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_blog,
  ecto_repos: [PhxBlog.Repo]

# Configures the endpoint
config :phx_blog, PhxBlog.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7L6hJlDjK4s7eKCf14VZaTV2OVK95ZXB8Fj8WcJD2+tg5HIy+tNEL7cISwvhVdOt",
  render_errors: [view: PhxBlog.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhxBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
