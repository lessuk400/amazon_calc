# frozen_string_literal: true

module Markets
  class ShowFacade
    def initialize(market_id:)
      @market_id = market_id
    end

    def marketplace_list
      MarketPlace.where(market_id: @market_id)
    end

    def category_list
      Category.pluck(:title, :id)
    end
  end
end
