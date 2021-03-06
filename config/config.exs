# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphical,
  ecto_repos: [Graphical.Repo]

# Configures the endpoint
config :graphical, GraphicalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8bnSbU8Mp1NeIHcnHKAfUMn59XR+2snoIQ0TRagngSULi1Mb0mpCdOjYedSOgY+1",
  render_errors: [view: GraphicalWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Graphical.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :graphical, Graphical.Guardian,
  issuer: "graphical",
  secret_key_base: "YXBasJeywU6XLP0CDbXEPAoGWalS0csTIgKPeDm1Bk6/raa53a5o4lwJv0mF83a7"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
