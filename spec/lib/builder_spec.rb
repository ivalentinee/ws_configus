require 'spec_helper'

describe WsConfigus::Builder do
  before do
    @c = WsConfigus::Builder.build :test do
      env :test do
        sname "Petya"
      end
    end
  end

  it "must be instance of Config" do
    @c.must_be_instance_of WsConfigus::Config
  end

  it "must return 'Petya'" do
    @c.sname.must_equal 'Petya'
  end
end
