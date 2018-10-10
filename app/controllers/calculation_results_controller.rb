# frozen_string_literal: true

class CalculationResultsController < ApplicationController
  def show
    @facade = CalculationResults::ShowFacade.new(result_id: params[:result_id])
  end
end
