# frozen_string_literal: true

class CalculationsController < ApplicationController
  def create
    @facade = Calculations::CreateFacade.new(info: params[:info])

    redirect_to calculation_results_path(params: @facade.result_params) if @facade.result_valid?
  end
end
