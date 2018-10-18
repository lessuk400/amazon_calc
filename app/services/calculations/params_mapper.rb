# frozen_string_literal: true

module Calculations
  class ParamsMapper < Callable
    include Calculations::Calculatable

    delegate :gec,    to: :current_marketplace, prefix: true
    delegate :alpha3, to: :marketplace,         prefix: true

    def initialize(info:)
      @info = info
    end

    def call
      create_params if fba_fee_per_unit
    end

    private

    attr_reader :info

    def create_params
      {
        email:                  info[:email],
        fba_fee_per_unit:       fba_fee_per_unit,
        selling_fee_per_unit:   selling_fee_per_unit,
        shipping_cost_per_unit: shipping_cost_per_unit,
        vat_duty_cost_per_unit: vat_duty_cost_per_unit,
        ppc_cost_per_unit:      ppc_cost_per_unit,
        total_net_cash_profit:  total_net_cash_profit,
        marketplace:            current_marketplace_gec
      }
    end

    def current_marketplace
      ISO3166::Country.find_country_by_alpha3(marketplace_alpha3)
    end

    def marketplace
      MarketPlace.find_by(id: info[:marketplace_id])
    end
  end
end
