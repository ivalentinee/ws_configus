module WsConfigus
  class Environment < BasicObject
    def self.method_missing name, *args, &block
      raise '--- +++ Environment +++ ---'
    end

    def self.build &block
      Config.class_eval do
        def name
          'Petya'
        end
      end
      instance_eval &block
    end
  end
end
