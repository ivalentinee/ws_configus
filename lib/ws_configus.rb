require "ws_configus/version"

module WsConfigus
  autoload 'Builder', 'ws_configus/builder'
  autoload 'Config', 'ws_configus/config'
  autoload 'Environment', 'ws_configus/environment'

  def build(env, &block)
  end
end
