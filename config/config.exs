# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :p_server,
  ecto_repos: [PServer.Repo]

# Configures the endpoint
config :p_server, PServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DJpr6h0RKgEonu9Sthas/hXlNoTa+WkgCeg/jdaP4SeLSwDd6BM0VV/evmIfecmQ",
  # secret_key_base: "dRsG7VbttGSuEcbxV1C2Ru0q4FnYcrqIUOynCNz3rmExvPjnm3nBWMDE1hWetf/K",
  render_errors: [view: PServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PServer.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# config :argon2_elixir,
#   t_cost: 1,
#   m_cost: 8

# config :cors_plug,
#   # origin: ["http://example.com"],
#   origin: ["0.0.0.0", "localhost"],
#   max_age: 86400,
#   methods: ["GET", "POST"]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
