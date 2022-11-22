defmodule PhxPartner.Repo do
  use Ecto.Repo,
    otp_app: :phx_partner,
    adapter: Ecto.Adapters.Postgres
end
