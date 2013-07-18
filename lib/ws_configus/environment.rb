module WsConfigus
  class Environment < BasicObject
    def method_missing name, *args, &block
      if block.nil?
        @config[name] = args.first
        @config.singleton_class.instance_eval do
          define_method(name) do
            self[name]
          end
        end
      else
        @config[name] = Environment.new.build &block
        @config.singleton_class.instance_eval do
          define_method(name) do
            self[name]
          end
        end
      end
    end

    def build &block
      @config = Config.new
      instance_eval &block
      @config
    end
  end
end
