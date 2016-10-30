defmodule FriendsTest do
  use ExUnit.Case, async: true
  use Plug.Test
  doctest Friends

  @opts Friends.Router.init([])

  test "returns URL path as a response body" do
    conn = conn(:get, "/shimeji")

    conn = Friends.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "shimeji"
  end
end
