# frozen_string_literal: true

module Calculations
  class Create < Callable
    def initialize(params:)
      @params = params
    end

    def call
      Calculation.create(create_params)
    end

    private

    attr_reader :params

    def create_params
      params.merge(expiration_date)
    end

    def expiration_date
      {
        expired_at: Time.now + 10.minute
      }
    end
  end
end
