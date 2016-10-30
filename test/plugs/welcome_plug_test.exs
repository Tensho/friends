defmodule WelcomePlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts WelcomePlug.init([])

  test "returns response body prepended with \"Welcome to\"" do
    conn = conn(:get, "/")
    conn = WelcomePlug.call(conn, @opts)
    conn = send_resp(conn, 200, "some response from other plugs")

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Welcome to some response from other plugs"
  end
end
