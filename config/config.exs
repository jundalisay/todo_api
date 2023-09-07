# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :todoapi,
  ecto_repos: [Todoapi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :todoapi, TodoapiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: TodoapiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Todoapi.PubSub,
  live_view: [signing_salt: "p8pVImdk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :todoapi, TodoapiWeb.Auth.Guardian,
  issuer: "todoapi",
  secret_key: "A2QhoBW5+qU4F79ac7Ozo4fUlRpzkeHOYORgJkCazWjvOH22e3esAjryekV/+5Qs"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :guardian, Guardian.DB,
  repo: Todoapi.Repo,
  schema_name: "guardian_tokens",
  sweep_interval: 60

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
