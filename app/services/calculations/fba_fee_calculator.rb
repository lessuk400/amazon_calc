# frozen_string_literal: true

module Calculations
  class FbaFeeCalculator < Callable
    def initialize(height:, length:, width:, weight:)
      @height = height
      @length = length
      @width  = width
      @weight = weight
    end

    def call
      fba_fee.first&.price
    end

    private

    attr_reader :height, :length, :weight, :width

    def fba_fee
      Fee.appropriate_fba_fee(height: height,
                              length: length,
                              width:  width,
                              weight: weight)
    end
  end
end
