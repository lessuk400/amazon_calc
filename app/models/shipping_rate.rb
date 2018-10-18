# frozen_string_literal: true

class ShippingRate < ApplicationRecord
  belongs_to :package
  belongs_to :market_place
end
