defmodule Friends.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    people_names = Friends.Person |>
                   Friends.Repo.all |>
                   Enum.map(fn(person) -> [person.first_name, person.last_name] |> Enum.join(" ") end) |>
                   Enum.join(" | ")
    send_resp(conn, 200, people_names)
  end

  match _ do
    send_resp(conn, 404, "404 Page Not Found")
  end
end
