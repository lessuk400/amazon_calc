# frozen_string_literal: true

module Calculations
  class VatDutiesCalculator < Callable
    def initialize(shipment_size:, vat_duty_cost:)
      @shipment_size  = shipment_size
      @vat_duty_cost  = vat_duty_cost
    end

    def call
      vat_duty_per_unit
    end

    private

    attr_reader :shipment_size, :vat_duty_cost

    def vat_duty_per_unit
      vat_duty_cost.to_f / shipment_size.to_i
    end
  end
end
