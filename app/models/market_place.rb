# frozen_string_literal: true

class MarketPlace < ApplicationRecord
  belongs_to :market, inverse_of: :market_places

  has_many :fees,          inverse_of: :market_place
  has_many :dimensions,    inverse_of: :market_place
  has_many :referral_fees, inverse_of: :market_place
  has_many :categories,    inverse_of: :market_place
end
