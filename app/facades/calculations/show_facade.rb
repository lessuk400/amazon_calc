# frozen_string_literal: true

module Calculations
  class ShowFacade < Callable
    delegate :fba_fee_per_unit, :selling_fee_per_unit, :shipping_cost_per_unit,
             :vat_duty_cost_per_unit, :ppc_cost_per_unit, :total_net_cash_profit,
             :ppc_cost_per_unit, :currency, to: :finder

    def initialize(id:)
      @id = id
    end

    private

    def finder
      @finder ||= Calculation.find(@id)
    end
  end
end
