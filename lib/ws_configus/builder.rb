module WsConfigus
  class Builder

    @environments = {}

    def self.env environment, &block
      @environments[environment] = Environment.new.build &block
    end

    def self.build env, &block
      instance_eval &block
      @environments[env]
    end
  end
end
