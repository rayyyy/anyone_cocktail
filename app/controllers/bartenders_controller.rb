# frozen_string_literal: true

class BartendersController < ApplicationController
  def show
    @bartender = Bartender.find(params[:id])
  end
end
