# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :astroquiz,
  ecto_repos: [Astroquiz.Repo]

# Configures the endpoint
config :astroquiz, AstroquizWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oUMZGOnXl53o9EoCI8KLaj52NL45//KtmFSm2g5qh+tvdJF0mBOr1QZqsY7pCkDO",
  render_errors: [view: AstroquizWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Astroquiz.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
