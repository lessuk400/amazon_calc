# frozen_string_literal: true

class ResultsController < ApplicationController
  def show
    @facade = Results::ShowFacade.new(result_id: params[:result_id])
  end
end
