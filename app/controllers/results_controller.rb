# frozen_string_literal: true

class ResultsController < ApplicationController
  def show
    @facade = Results::ShowFacade.new(token: session[:last_result_token])

    redirect_to :root if @facade.finder_nil?
  end
end
