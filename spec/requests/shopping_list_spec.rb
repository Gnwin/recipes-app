require 'rails_helper'

RSpec.describe 'Shopping List', type: :request do
  describe 'GET /index' do
    it 'Shopping List: returns http success' do
      get '/shopping_list'
      expect(response).to have_http_status(:success)
    end
  end
end
