# frozen_string_literal: true

class MyPageController < ApplicationController
  before_action :authenticate_auth_user!, only: [:index]

  def index
    @current_user = current_auth_user
  end
end
