defmodule AutoFinderLivedashboard.Repo do
  use Ecto.Repo,
    otp_app: :auto_finder_livedashboard,
    adapter: Ecto.Adapters.Postgres
end
