# frozen_string_literal: true

module CalculationResults
  class ShowFacade < Callable
    delegate :fba_fee_per_unit, :selling_fee_per_unit, :shipping_cost_per_unit,
             :vat_duty_cost_per_unit, :ppc_cost_per_unit, :total_net_cash_profit,
             :ppc_cost_per_unit, :marketplace, to: :finder

    def initialize(result_id:)
      @result_id = result_id
    end

    def currency
      ISO3166::Country.find_country_by_gec(marketplace).currency.symbol
    end

    private

    def finder
      @finder ||= Calculation.find(@result_id)
    end
  end
end
