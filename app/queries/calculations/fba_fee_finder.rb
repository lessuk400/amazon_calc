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
      Array[height, width, length, weight]
    end

    def appropriate_fba_fee
      ShippingRate
        .joins(:package)
        .order('tier, fee')
        .find_by('(height >= ? and width >= ? and length >= ?) and weight >= ?', *search_params)
    end
  end
end
