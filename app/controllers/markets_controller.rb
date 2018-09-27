# frozen_string_literal: true

class MarketsController < ApplicationController
  def index; end

  def show
    @facade = Markets::ShowFacade.new(market_id: params[:id])
  end
end
