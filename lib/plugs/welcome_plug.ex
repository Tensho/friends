defmodule WelcomePlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    conn |> resp(conn.status || 200, "Hello #{conn.resp_body}")
  end
end
