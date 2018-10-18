# frozen_string_literal: true

module Calculations
  class CreateFacade < Callable
    GBP_USD = 1

    delegate :valid?, :token, to: :result, prefix: true, allow_nil: true

    def initialize(info:)
      @info = info
    end

    def result
      @result ||= Calculations::Create.call(params: create_params) if create_params
    end

    def error_redirect_params
      {
        fallback_location: :root,
        alert:             error_message
      }
    end

    private

    attr_reader :info

    def error_message
      I18n.t('views.results.errors.dimension_weight_error')
    end

    def create_params
      @create_params ||= ParamsMapper.call(info: info)
    end
  end
end
