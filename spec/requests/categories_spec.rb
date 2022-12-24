require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /index' do
    before(:example) { get categories_path }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'Get /:id' do
    before(:example) { get '/categories/' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
  end
end
