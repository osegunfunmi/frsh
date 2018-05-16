# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fresh,
  ecto_repos: [Fresh.Repo]

# Configures the endpoint
config :fresh, FreshWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dE4GWA3nr4q/X41NLP5ic1h3TFHpu+NtWNYzNGi6NmHKzl0GN6LucIH8LK4yYnsN",
  render_errors: [view: FreshWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Fresh.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
