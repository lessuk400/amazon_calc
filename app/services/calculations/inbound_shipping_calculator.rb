# frozen_string_literal: true

module Calculations
  class InboundShippingCalculator < Callable
    def initialize(shipment_size:, shipping_costs:)
      @shipment_size  = shipment_size
      @shipping_costs = shipping_costs
    end

    def call
      shipping_cost_per_unit.round(2)
    end

    private

    attr_reader :shipment_size, :shipping_costs

    def shipping_cost_per_unit
      shipping_costs.to_f / shipment_size.to_i
    end
  end
end
