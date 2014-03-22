require 'spec_helper'

describe HomeController do

  describe 'routing' do
    it 'without id routes to #index' do
      expect( get('/') ).to route_to('home#index')
    end

    it 'defines home_path' do
      root_path
    end
  end
end
