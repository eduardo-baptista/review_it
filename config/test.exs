use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :review_it, ReviewIt.Repo,
  username: "postgres",
  password: "postgres",
  database: "review_it_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :review_it, ReviewItWeb.Endpoint,
  http: [port: 4002],
  server: false

# files controller config
config :review_it, ReviewItWeb.FilesController, client: ReviewIt.Imgbb.ClientMock

# Print only warnings and errors during test
config :logger, level: :warn
