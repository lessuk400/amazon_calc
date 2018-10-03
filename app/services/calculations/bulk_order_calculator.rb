# frozen_string_literal: true

module Calculations
  class BulkOrderCalculator < Callable
    def initialize(params)
      @shipment_size    = params[:shipment_size]
      @purchasing_price = params[:purchasing_price]
      @shipping_costs   = params[:shipping_costs]
      @vat_duty_cost    = params[:vat_duty_cost]
    end

    def call
      total_bulk_order / shipment_size
    end

    private

    attr_reader :shipment_size, :vat_duty_cost, :purchasing_price, :shipping_costs

    def total_bulk_order
      shipment_size * purchasing_price + shipping_costs + vat_duty_cost
    end
  end
end
