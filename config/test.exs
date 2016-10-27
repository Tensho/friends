use Mix.Config

config :friends, :ecto_adapter, Sqlite.Ecto

config :friends, Friends.Repo,
  adapter: Application.get_env(:friends, :ecto_adapter),
  database: "test/friends_test.sqlite3",
  size: 1,
  max_overflow: 0
