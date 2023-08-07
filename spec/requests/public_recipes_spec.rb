require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'GET /index' do
    it 'returns http success' do
      @user = User.create(name: 'mike', email: 'mihael@gmail.com', password: '123456',
                          password_confirmation: '123456')

      login_as(@user, scope: :user)

      get user_public_recipes_path(@user)
      expect(response).to have_http_status(:success)
    end
  end
end
