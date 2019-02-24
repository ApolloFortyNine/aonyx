defmodule Aonyx.Repo do
  use Ecto.Repo,
    otp_app: :aonyx,
    adapter: Ecto.Adapters.Postgres
end
