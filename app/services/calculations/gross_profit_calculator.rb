# frozen_string_literal: true

module Calculations
  class GrossProfitCalculator < Callable
    def initialize(params)
      @selling_fee_per_unit = params[:selling_fee_per_unit]
      @fba_fee_per_unit     = params[:fba_fee_per_unit]
      @marketplace_id       = params[:marketplace_id]
      @sales_price          = params[:sales_price]
    end

    def call
      sales_price - vat_fee
    end

    private

    attr_reader :selling_fee_per_unit, :fba_fee_per_unit, :marketplace_id, :sales_price

    def vat_fee
      (selling_fee_per_unit + fba_fee_per_unit) * vat_multiplier
    end

    def vat_multiplier
      1 + MarketPlace.find(marketplace_id).vat
    end
  end
end
