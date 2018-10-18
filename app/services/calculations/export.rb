# frozen_string_literal: true

module Calculations
  class Export < Callable
    require 'csv'

    ATTRIBUTES = %i[
      id email marketplace selling_fee_per_unit
      shipping_cost_per_unit vat_duty_cost_per_unit ppc_cost_per_unit
      total_net_cash_profit fba_fee_per_unit created_at
    ].freeze

    def initialize(object:)
      @object = object
    end

    def call
      CSV.generate do |csv|
        csv << ATTRIBUTES
        add_to_csv(csv)
      end
    end

    private

    attr_reader :object

    private *delegate(:column_names, :all, to: :object)

    def add_to_csv(csv)
      all.map(&method(:model_attributes)).each { |record| csv << record }
    end

    def model_attributes(item)
      ATTRIBUTES.map { |attr| item.send(attr) }
    end
  end
end
