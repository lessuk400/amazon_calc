# frozen_string_literal: true

class Package < ApplicationRecord
  has_many :market_places, through: :shipping_rates

  enum tier: %i[small_letter standard_envelope large_envelope standard_parcel]
end
