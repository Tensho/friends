defmodule FriendsTest do
  use ExUnit.Case, async: true
  use Plug.Test
  doctest Friends

  @opts Friends.Router.init([])

  test "returns people names" do
    conn = conn(:get, "/hello")

    conn = Friends.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "abc"
  end
end
