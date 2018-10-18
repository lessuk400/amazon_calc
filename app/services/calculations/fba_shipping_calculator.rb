# frozen_string_literal: true

module Calculations
  class FbaShippingCalculator < Callable
    def initialize(shipment_size)
      @shipment_size = shipment_size
    end

    def call
      other_costs / shipment_size
    end

    private

    attr_reader :shipment_size

    def other_costs
      50 + 299 / CreateFacade::GBP_USD
    end
  end
end
