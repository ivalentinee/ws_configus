require 'spec_helper'

describe WsConfigus do
  it "must set key value" do
    #c = WsConfigus::build :test do
    WsConfigus::build :test do
      env :test do
        name "Petya"
      end
    end
    c.name.must_equal "Petya"
  end
end