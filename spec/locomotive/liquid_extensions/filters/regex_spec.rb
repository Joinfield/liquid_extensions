require 'spec_helper'

describe Locomotive::LiquidExtensions::Filters::Regex do

  include Locomotive::LiquidExtensions::Filters::Regex

  describe '#regex' do

    it 'it match the right part' do
      regex('mydomain.de:80', ".*[\.]+(de|at|ch|com)").should eq("de")
      regex('mydomain.de:80/index.html', ".*[\.]+(de|at|ch|com)").should eq("de")
      regex('mydomain.de/index.html', ".*[\.]+(de|at|ch|com)").should eq("de")
      regex('www.mydomain.de/index.html', ".*[\.]+(de|at|ch|com)").should eq("de")
      regex('www.mydomain.ch', ".*[\.]+(de|at|ch|com)").should eq("ch")
    end

  end

end
