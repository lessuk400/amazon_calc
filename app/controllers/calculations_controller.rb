# frozen_string_literal: true

class CalculationsController < ApplicationController
  after_action :set_result, only: :create

  def create
    @facade = Calculations::CreateFacade.new(info: params[:info])

    return redirect_back(@facade.error_redirect_params) unless @facade.result_valid?

    redirect_to calculations_results_path
  end

  private

  def set_result
    session[:last_result_token] = @facade.result_token if @facade.result_valid?
  end
end
