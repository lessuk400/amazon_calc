# frozen_string_literal: true

module Calculations
  class FbaFeeFinder < Callable
    def initialize(params:)
      @height         = params[:height]
      @length         = params[:length]
      @width          = params[:width]
      @weight         = params[:weight]
      @marketplace_id = params[:marketplace_id]
    end

    def call
      ShippingRate
        .where(market_place_id: marketplace_id)
        .joins(:package)
        .order('tier, fee')
        .find_by('weight >= ? and (height >= ? and width >= ? and length >= ?)', *search_params)
    end

    private

    attr_reader :height, :length, :weight, :width, :marketplace_id

    def search_params
      Array[weight, height, width, length]
    end
  end
end
