# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_chat,
  ecto_repos: [LiveViewChat.Repo]

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Configures the endpoint
config :live_view_chat, LiveViewChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+YlDs8e7cKZCSBSlRC1+ULJ6uLj6G79TedwxWAg09TafqzzbNy6m9FI2uGGPkIe+",
  render_errors: [view: LiveViewChatWeb.ErrorView, accepts: ~w(html json)],
  live_view: [
    signing_salt: "dzmNmD27UATOSXzHos0VqD4ECy8qdqnu5e/wS1QN+uoiqeS2x6+GF+dXuMFRQV/q"
  ],
  pubsub: [name: LiveViewChat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
