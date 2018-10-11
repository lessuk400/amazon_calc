# frozen_string_literal: true

module Calculations
  class Export < Callable
    require 'csv'

    def initialize(object:)
      @object = object
    end

    def call
      CSV.generate do |csv|
        csv << column_names
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
      item.attributes.values
    end
  end
end
