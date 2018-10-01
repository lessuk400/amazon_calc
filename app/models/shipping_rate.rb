# frozen_string_literal: true

class ShippingRate < ApplicationRecord
  belongs_to :package
  belongs_to :market_place

  scope :appropriate_fba_fee, Calculations::FbaFeeFinder
end
