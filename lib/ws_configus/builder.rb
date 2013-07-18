module WsConfigus
  class Builder
    def self.env environment, &block
      Environment.build &block
    end

    def self.build env, &block
      instance_eval &block
      Config.new
    end
  end
end
