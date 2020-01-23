# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :ig,
  users: %{
    user_name: %{
      identifier: "...",
      password: "...",
      api_key: "...",
      demo: true
    }
  }

config :exvcr,
  filter_request_headers: [
    "CST",
    "X-SECURITY-TOKEN",
    "X-IG-API-KEY"
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# This file will be included for convinience gitignored
# import_config "secret.exs"