use Mix.Config

config :friends, Friends.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "friends_dev",
  username: "tensho",
  password: "",
  hostname: "localhost"

config :friends, ecto_repos: [Friends.Repo]
