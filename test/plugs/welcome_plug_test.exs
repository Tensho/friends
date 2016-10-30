defmodule WelcomePlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts WelcomePlug.init([])

  test "returns response body prepended with \"Welcome to\"" do
    conn = conn(:get, "/")
    conn = resp(conn, 200, "some response from other plugs")

    conn = WelcomePlug.call(conn, @opts)

    assert conn.status == 200
    assert conn.resp_body == "Welcome to some response from other plugs"
  end
end
