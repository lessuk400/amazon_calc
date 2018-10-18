# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :referral_fees
  has_many :market_places, through: :referral_fees
end
