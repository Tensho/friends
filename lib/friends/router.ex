# NOTE: Module style plug
defmodule Friends.Router do
  use Plug.Router

  plug WelcomePlug
  plug :inspect_request_path
  plug :match
  plug :dispatch

  get "/*glob" do
    send_resp(conn, 200, conn.request_path)
  end

  match _ do
    send_resp(conn, 404, "404 Page Not Found")
  end

  # NOTE: Function style plug
  def inspect_request_path(conn, _opts) do
    IO.inspect(conn.request_path)
    conn
  end
end

