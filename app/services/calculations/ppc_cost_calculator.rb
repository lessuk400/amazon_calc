# frozen_string_literal: true

module Calculations
  class PpcCostCalculator < Callable
    def initialize(params:)
      @params = params
    end

    def call
      net_profit
    end

    private

    attr_reader :params

    def net_profit
      gross_profit_per_unit - (bulk_order_per_unit + fba_shipping_per_unit)
    end

    def gross_profit_per_unit
      GrossProfitCalculator.call(gross_profit_params)
    end

    def bulk_order_per_unit
      BulkOrderCalculator.call(bulk_order_params)
    end

    def fba_shipping_per_unit
      FbaShippingCalculator.call(params[:shipment_size])
    end

    def gross_profit_params
      {
        selling_fee_per_unit: params[:selling_fee_per_unit],
        fba_fee_per_unit:     params[:fba_fee_per_unit],
        marketplace_id:       params[:marketplace_id],
        sales_price:          params[:sales_price]
      }
    end

    def bulk_order_params
      {
        shipment_size:    params[:shipment_size],
        vat_duty_cost:    params[:vat_duty_cost],
        purchasing_price: params[:purchasing_price],
        shipping_costs:   params[:shipping_costs]
      }
    end
  end
end
