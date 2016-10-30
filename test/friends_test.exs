defmodule FriendsTest do
  use ExUnit.Case, async: true
  use Plug.Test
  doctest Friends

  @opts Friends.Router.init([])

  test "returns welcomed URL path as a response body" do
    conn = conn(:get, "/japanese/tomodachi")
    conn = Friends.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Welcome to /japanese/tomodachi"
  end
end
