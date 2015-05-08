defmodule SimplePhoenixApp.Endpoint do
  use Phoenix.Endpoint, otp_app: :simple_phoenix_app

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :simple_phoenix_app,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_simple_phoenix_app_key",
    signing_salt: "PlS1Zhy4",
    encryption_salt: "3A++DJ4E"

  plug :router, SimplePhoenixApp.Router
end
