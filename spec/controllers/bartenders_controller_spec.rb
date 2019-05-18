# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BartendersController, type: :controller do

  let!(:bartender) { create(:bartender) }

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { id: bartender.id }
      expect(response).to have_http_status(:success)
    end
  end
end
