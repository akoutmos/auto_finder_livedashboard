# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auto_finder_livedashboard,
  ecto_repos: [AutoFinderLivedashboard.Repo]

# Configures the endpoint
config :auto_finder_livedashboard, AutoFinderLivedashboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Be5wanXL1OZUM+/HQ5Sa+X52IujwYyztf6s8FjD2BGua/ecVCZ/5dVhhwtVKkFpO",
  render_errors: [view: AutoFinderLivedashboardWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AutoFinderLivedashboard.PubSub,
  live_view: [signing_salt: "Q+JZywQn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
