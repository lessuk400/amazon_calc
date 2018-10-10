# frozen_string_literal: true

class CalculationsController < ApplicationController
  def index
    @calculations = Calculation.all

    respond_to do |format|
      format.csv { send_data @calculations.to_csv, filename: "calculations-#{Date.today}.csv" }
    end
  end

  def create
    @facade = Calculations::CreateFacade.new(info: params[:info])

    redirect_to calculation_results_path(params: @facade.result_params) if @facade.result_valid?
  end
end
