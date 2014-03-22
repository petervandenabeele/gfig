require 'spec_helper'

describe HomeController do

  context 'GET index' do

    it 'has a 200 status code' do
      get('index')
      expect(response.code).to eq '200'
    end
  end
end
