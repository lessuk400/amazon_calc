# frozen_string_literal: true

module Calculations
  module Calculatable
    extend ActiveSupport::Concern

    included do
      private

      def fba_fee_per_unit
        @fba_fee_per_unit ||= FbaFeeCalculator.call(params: fba_fee_params)
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

      def ppc_params
        ppc_monetary_params.merge(ppc_shipping_params)
      end

      def ppc_monetary_params
        {
          marketplace_id:       info[:marketplace_id],
          selling_fee_per_unit: selling_fee_per_unit,
          fba_fee_per_unit:     fba_fee_per_unit,
          purchasing_price:     info[:purchasing_price].to_f,
          sales_price:          info[:sales_price].to_f
        }
      end

      def ppc_shipping_params
        {
          shipping_costs: info[:shipping_costs].to_f,
          vat_duty_cost:  info[:vat_duty_cost].to_f,
          shipment_size:  info[:shipment_size].to_i
        }
      end

      def fba_fee_params
        {
          height:         info[:height],
          length:         info[:length],
          width:          info[:width],
          weight:         info[:weight],
          marketplace_id: info[:marketplace_id]
        }
      end

      def selling_fee_params
        {
          category_id:    info[:category_id],
          sales_price:    info[:sales_price],
          marketplace_id: info[:marketplace_id]
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
end
