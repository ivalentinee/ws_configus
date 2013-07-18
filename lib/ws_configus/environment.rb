module WsConfigus
  class Environment < BasicObject
    def self.method_missing name, *args, &block
      if block_given?
        @config[name] = Environment.build &block
        @config.singleton_class.instance_eval do
          define_method(name) do
            self[name]
          end
        end
      else
        @config[name] = args.first
        @config.singleton_class.instance_eval do
          define_method(name) do
            self[name]
          end
        end
      end
    end

    def self.build &block
      @config = Config.new
      instance_eval &block
      @config
    end
  end
end
