# frozen_string_literal: true

module Results
  class ShowFacade < Callable
    delegate :fba_fee_per_unit, :selling_fee_per_unit, :shipping_cost_per_unit,
             :vat_duty_cost_per_unit, :ppc_cost_per_unit, :total_net_cash_profit,
             :ppc_cost_per_unit, :marketplace, to: :finder, allow_nil: true

    delegate :currency, to: :country, allow_nil: true

    delegate :symbol, to: :currency, prefix: true, allow_nil: true

    def initialize(token:)
      @token = token
    end

    def finder
      @finder ||= Calculation.find_by('token = ? and expired_at > ?', token, Time.now)
    end

    private

    attr_reader :token

    def country
      @country ||= ISO3166::Country.find_country_by_gec(marketplace)
    end
  end
end
