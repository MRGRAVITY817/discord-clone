defmodule Datcord.Repo do
  use Ecto.Repo,
    otp_app: :datcord,
    adapter: Ecto.Adapters.Postgres
end
