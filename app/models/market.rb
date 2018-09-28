# frozen_string_literal: true

class Market < ApplicationRecord
  has_many :market_places, inverse_of: :market
end
