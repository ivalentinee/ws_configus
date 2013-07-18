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
    @c[:last_name].must_equal 'Ivanov'
  end

  it "should return value for 2nd level nested key" do
    c = WsConfigus::Builder.build :test do
      env :test do
        email do
         address 'pop.example.com'
         port    110
        end
      end
    end
    c.email.address.must_equal 'pop.example.com'
    c[:email][:port].must_equal 110
  end

  it "should return value for 3rd level nested key" do
    c = WsConfigus::Builder.build :test do
      env :test do
        email do
          pop do
            address 'pop.example.com'
            port    110
          end
        end
      end
    end
    c.email.pop.address.must_equal 'pop.example.com'
    c[:email][:pop][:port].must_equal 110
  end

  it "should differ several environments" do
    c = WsConfigus::Builder.build :test do
      env :test do
        first_name "Vasya"
      end

      env :something do
        first_name "Dima"
      end
    end
    c.first_name.must_equal 'Vasya'
  end
end
