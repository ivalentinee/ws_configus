require "ws_configus/version"

module WsConfigus
  autoload 'Builder', 'ws_configus/builder'
  autoload 'Config', 'ws_configus/config'

  def build(env, &block)
  end
end
