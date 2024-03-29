defmodule Thinker.Config.Test do
  use Thinker.Config

  config :router, port: 4001,
                  ssl: false,
                  # Full error reports are enabled
                  consider_all_requests_local: true

  config :plugs, code_reload: true

  config :logger, level: :debug
end


