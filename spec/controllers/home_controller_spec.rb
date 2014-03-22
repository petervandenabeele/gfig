require 'spec_helper'

describe HomeController do

  context 'GET index' do

    render_views

    it 'has a 200 status code' do
      get('index')
      expect(response.code).to eq '200'
    end

    it 'has the word Green, Orange, Red' do
      get('index')
      expect(response.body).to match(/(Green)|(Orange)|(Red)/)
    end
  end
end
