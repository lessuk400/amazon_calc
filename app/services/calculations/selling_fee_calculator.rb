# frozen_string_literal: true

module Calculations
  class SellingFeeCalculator < Callable
    def initialize(category_id:, sales_price:, marketplace_id:)
      @category_id    = category_id
      @sales_price    = sales_price
      @marketplace_id = marketplace_id
    end

    def call
      selling_fee
    end

    private

    attr_reader :sales_price, :category_id, :marketplace_id

    def selling_fee
      [min_selling_fee, current_selling_fee].max
    end

    def min_selling_fee
      referral_fee.min_fee
    end

    def current_selling_fee
      referral_fee.fee * sales_price.to_f
    end

    def referral_fee
      @referral_fee ||= ReferralFee.find_by(market_place_id: marketplace_id,
                                            category_id:     category_id)
    end
  end
end
