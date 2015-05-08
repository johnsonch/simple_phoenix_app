use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :simple_phoenix_app, SimplePhoenixApp.Endpoint,
  secret_key_base: "omHvS+1T1cHZrp9q0Twd0XmbuvgiszL3AYZuQZeoK0KU9y4/9AcIr71p0YGPZPST"

# Configure your database
config :simple_phoenix_app, SimplePhoenixApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "simple_phoenix_app_prod"
