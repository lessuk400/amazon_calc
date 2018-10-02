# frozen_string_literal: true

module Calculations
  class CreateFacade
    GBP_USD = 1.28

    def initialize(info:)
      @info = info
    end

    def fba_fee_per_unit
      @fba_fee_per_unit ||= FbaFeeCalculator.call(fba_fee_params)
    end

    def selling_fee_per_unit
      @selling_fee_per_unit ||= SellingFeeCalculator.call(selling_fee_params)
    end

    def shipping_cost_per_unit
      @shipping_cost_per_unit = InboundShippingCalculator.call(shipping_cost_params)
    end

    def vat_duty_cost_per_unit
      @vap_duties_per_unit = VatDutiesCalculator.call(vat_duty_params)
    end

    def ppc_cost_per_unit
      @ppc_cost_per_unit = PpcCostCalculator.call(params: ppc_params)
    end

    def total_net_cash_profit
      ppc_cost_per_unit * info[:shipment_size].to_i
    end

    def currency_symbol
      current_currency_symbol
    end

    private

    attr_reader :info

    def current_currency_symbol
      current_marketplace.currency.symbol
    end

    def current_marketplace
      ISO3166::Country.find_country_by_alpha3(MarketPlace.find(info[:marketplace_id]).alpha3)
    end

    def gbp_convert(value)
      value.to_f / GBP_USD
    end

    def ppc_params
      {
        purchasing_price:     gbp_convert(info[:purchasing_price]),
        sales_price:          info[:sales_price],
        shipping_costs:       info[:shipping_costs],
        vat_duty_cost:        info[:vat_duty_cost],
        shipment_size:        info[:shipment_size],
        selling_fee_per_unit: selling_fee_per_unit,
        fba_fee_per_unit:     fba_fee_per_unit
      }
    end

    def fba_fee_params
      {
        height: info[:height],
        length: info[:length],
        width:  info[:width],
        weight: info[:weight]
      }
    end

    def selling_fee_params
      {
        category_id: info[:category_id],
        sales_price: info[:sales_price]
      }
    end

    def shipping_cost_params
      {
        shipment_size:  info[:shipment_size],
        shipping_costs: info[:shipping_costs]
      }
    end

    def vat_duty_params
      {
        shipment_size: info[:shipment_size],
        vat_duty_cost: info[:vat_duty_cost]
      }
    end
  end
end
