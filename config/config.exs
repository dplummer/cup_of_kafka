# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :kafka_ex,
  # Set to your app name to configure the consumer_group
  consumer_group: "cup_of_kafka",

  # Configured at runtime by Kaffeine
  brokers: [],

  # Allow Kaffeine to setup workers at runtime
  disable_default_worker: true,

  # Timeout value, in msec, for synchronous operations (e.g., network calls)
  sync_timeout: 4000,

  # Configure to your version of kafka
  kafka_version: "0.8.2"

config :kafka_impl, :impl, KafkaImpl.KafkaEx

config :kaffeine, consumer_wait_ms: 500

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :cup_of_kafka, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:cup_of_kafka, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
