module WsConfigus
  class Builder
    def self.env environment, &block
    end

    def self.build env, &block
      block.()
      Config.class_eval do
        def name
          'Petya'
        end
      end
      Config.new
    end

  end
end
