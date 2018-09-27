# frozen_string_literal: true

module Calculations
  class PpcCostCalculator < Callable
    def initialize(params:)
      @purchasing_price     = params[:purchasing_price].to_f
      @sales_price          = params[:sales_price].to_f
      @selling_fee_per_unit = params[:selling_fee_per_unit]
      @fba_fee_per_unit     = params[:fba_fee_per_unit]
      @shipment_size        = params[:shipment_size].to_i
      @shipping_costs       = params[:shipping_costs].to_f
      @vat_duty_cost        = params[:vat_duty_cost].to_f
    end

    def call
      net_profit
    end

    private

    attr_reader :purchasing_price, :fba_fee_per_unit, :selling_fee_per_unit,
                :shipment_size, :shipping_costs, :vat_duty_cost, :sales_price

    def gross_profit_per_unit
      sales_price - vat_fee
    end

    def vat_fee
      (selling_fee_per_unit + fba_fee_per_unit) * vat_multiplier
    end

    def vat_multiplier
      1 + MarketPlace.find(1).vat
    end

    def bulk_order_per_unit
      total_bulk_order / shipment_size
    end

    def total_bulk_order
      shipment_size * purchasing_price + shipping_costs + vat_duty_cost
    end

    def fba_shipping_per_unit
      other_costs / shipment_size
    end

    def other_costs
      50 + 299 / CreateFacade::GBP_USD
    end

    def net_profit
      gross_profit_per_unit - (bulk_order_per_unit + fba_shipping_per_unit)
    end
  end
end
