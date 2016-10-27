defmodule Friends.Repo do
  use Ecto.Repo, otp_app: :friends,
                 adapter: Application.get_env(:friends, :ecto_adapter)
end
