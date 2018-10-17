# frozen_string_literal: true

class CalculationsController < ApplicationController
  def create
    @facade = Calculations::CreateFacade.new(info: params[:info])

    return redirect_back(@facade.error_redirect_params) unless @facade.result_valid?

    redirect_to calculations_results_path(params: @facade.result_params)
  end
end
