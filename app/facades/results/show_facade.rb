# frozen_string_literal: true

module Results
  class ShowFacade < Callable
    delegate :fba_fee_per_unit, :selling_fee_per_unit, :shipping_cost_per_unit,
             :vat_duty_cost_per_unit, :ppc_cost_per_unit, :total_net_cash_profit,
             :ppc_cost_per_unit, :marketplace, to: :finder

    delegate :currency, to: :country, allow_nil: true

    delegate :symbol, to: :currency, prefix: true, allow_nil: true

    def initialize(result_id:)
      @result_id = result_id
    end

    private

    attr_reader :result_id

    def country
      @country ||= ISO3166::Country.find_country_by_gec(marketplace)
    end

    def finder
      @finder ||= Calculation.find_by(id: result_id)
    end
  end
end
