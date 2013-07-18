module WsConfigus
  class Builder
    def self.method_missing name, *args
      raise '__asdlablkabsdlkjab___'
    end

    def self.env environment, &block
      Config.class_eval do
        def name
          'Petya'
        end
      end

      instance_eval &block
    end

    def self.build env, &block
      instance_eval &block
      Config.new
    end

  end
end
