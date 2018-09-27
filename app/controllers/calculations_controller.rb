# frozen_string_literal: true

class CalculationsController < ApplicationController
  def create
    @facade = Calculations::CreateFacade.new(info: params[:info])
  end
end
