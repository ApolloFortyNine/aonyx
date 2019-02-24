# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :aonyx,
  ecto_repos: [Aonyx.Repo]

# Configures the endpoint
config :aonyx, AonyxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gOEeSJOzH1STjE12V2e0P/dafNqKjKfntk9DsvMagQmRTi9RSR9+x7o67h5paG0Y",
  render_errors: [view: AonyxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Aonyx.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
