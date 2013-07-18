require 'spec_helper'

describe WsConfigus::Builder do
  before do
    @c = WsConfigus::Builder.build :test do
      env :test do
        first_name "Petya"
        last_name "Ivanov"
      end
    end
  end

  it "must be instance of Config" do
    @c.must_be_instance_of WsConfigus::Config
  end

  it "should return value for key" do
    @c.first_name.must_equal 'Petya'
    @c.last_name.must_equal 'Ivanov'
  end
end
