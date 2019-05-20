# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MyPageController, type: :controller do
  let!(:auth_user) { create(:auth_user) }

  describe 'GET #index' do
    it 'returns http success' do
      sign_in auth_user
      get :index
      expect(response).to have_http_status(:success)
    end

    it '未ログイン時はlogin pageにリダイレクトする' do
      get :index
      expect(response).to redirect_to '/auth_users/sign_in'
    end
  end
end
