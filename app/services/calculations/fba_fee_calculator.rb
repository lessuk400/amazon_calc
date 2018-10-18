# frozen_string_literal: true

module Calculations
  class FbaFeeCalculator < Callable
    def initialize(params:)
      @height         = params[:height]
      @length         = params[:length]
      @width          = params[:width]
      @weight         = params[:weight]
      @marketplace_id = params[:marketplace_id]
    end

    def call
      fba_fee&.fee
    end

    private

    attr_reader :height, :length, :weight, :width, :marketplace_id

    def fba_fee
      FbaFeeFinder.call(params: query_params)
    end

    def query_params
      {
        height:         height,
        length:         length,
        width:          width,
        weight:         weight,
        marketplace_id: marketplace_id
      }
    end
  end
end
