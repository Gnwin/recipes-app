require 'rails_helper'

RSpec.describe 'Public Recipes', type: :request do
  describe 'GET /index' do
    it 'Public Recipes: returns http success' do
      get '/public_recipes'
      expect(response).to have_http_status(:success)
    end
  end
end
