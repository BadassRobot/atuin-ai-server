import Config

# Tests boot the server themselves with their own operator config.
config :atuin_ai_server, server: config_env() != :test

# Each log line carries its date as well as its time: the server runs for days and its log is one
# file (BadassRobot's scripts repository, atuin-service). Elixir's default is the time alone.
config :logger, :default_formatter, format: "$date $time $metadata[$level] $message\n"
