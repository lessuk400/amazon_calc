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
      appropriate_fba_fee
    end

    private

    attr_reader :height, :length, :weight, :width, :marketplace_id

    def search_params
      Array[height, width, length, weight]
    end

    def appropriate_fba_fee
      ShippingRate
        .where(market_place: marketplace_id)
        .joins(:package)
        .order('tier, fee')
        .find_by('(height >= ? and width >= ? and length >= ?) and weight >= ?', *search_params)
    end
  end
end
