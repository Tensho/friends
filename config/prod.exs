use Mix.Config

config :friends, :ecto_adapter, Ecto.Adapters.Postgres

config :friends, Friends.Repo,
  adapter: Application.get_env(:friends, :ecto_adapter),
  database: "friends_prod",
  username: "tensho",
  password: "",
  hostname: "localhost"
