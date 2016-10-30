defmodule Friends.Router do
  use Plug.Router

  plug :match
  plug WelcomePlug
  plug :dispatch

  get "/*glob" do
    send_resp(conn, 200, glob)
  end

  match _ do
    send_resp(conn, 404, "404 Page Not Found")
  end
end

