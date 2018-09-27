# frozen_string_literal: true

module Calculations
  class FbaFeeFinder < Callable
    def initialize(height:, length:, width:, weight:)
      @height = height
      @length = length
      @width  = width
      @weight = weight
    end

    def call
      appropriate_fba_fee
    end

    private

    attr_reader :height, :length, :weight, :width

    def search_params
      Array[weight, length, width, height]
    end

    def appropriate_fba_fee
      Fee.joins(:dimension)
        .where('weight >= ? and (length >= ? and width >= ? and height >= ?)', *search_params)
        .order(:price)
    end
  end
end
