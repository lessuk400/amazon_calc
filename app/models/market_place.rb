# frozen_string_literal: true

class MarketPlace < ApplicationRecord
  belongs_to :market, inverse_of: :market_places

  has_many :categories, through: :referral_fees
end
