defmodule PhxBlog.Web.Endpoint do
  use Phoenix.Endpoint, otp_app: :phx_blog

  socket "/socket", PhxBlog.Web.UserSocket

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug Plug.Static.IndexHtml,
    at: "/"
  plug Plug.Static,
    at: "/", from: "priv/static", gzip: true,
    only: ~w(index.html favicon.ico manifest.json service-worker.js static)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  plug Plug.Session,
    store: :cookie,
    key: "_phx_blog_key",
    signing_salt: "v3gCb1QY"

  plug CORSPlug, 
    origin: ["http://localhost:3000", "http://localhost:3001", "http://localhost:4000", "http://localhost:4001"]

  plug PhxBlog.Web.Router

  @doc """
  Dynamically loads configuration from the system environment
  on startup.

  It receives the endpoint configuration from the config files
  and must return the updated configuration.
  """
  def load_from_system_env(config) do
    port = System.get_env("PORT") || raise "expected the PORT environment variable to be set"
    {:ok, Keyword.put(config, :http, [:inet6, port: port])}
  end
end
