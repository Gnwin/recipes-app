require 'rails_helper'

Rails.application.load_seed

RSpec.describe 'Foods', type: :request do
  describe 'GET /index' do
    it 'Foods index: returns http success' do
      get '/foods'
      expect(response).to have_http_status(:success)
    end
  end
end
