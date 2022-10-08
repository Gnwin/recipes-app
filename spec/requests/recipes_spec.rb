require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET /index' do
    it 'Recipes index: returns http success' do
      get '/recipes'
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET /show' do
    it 'Recipes show: returns http success' do
      get '/recipes/1'
      expect(response).to have_http_status(:success)
    end
  end
end
