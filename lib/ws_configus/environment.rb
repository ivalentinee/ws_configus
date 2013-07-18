module WsConfigus
  class Environment < BasicObject
    def self.method_missing name, arg, &block
      @config.singleton_class.instance_eval do
        define_method(name) do
          arg
        end
      end
      @config[name] = arg
    end

    def self.build &block
      @config = Config.new
      instance_eval &block
      @config
    end
  end
end
