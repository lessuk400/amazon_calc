# frozen_string_literal: true

class Dimension < ApplicationRecord
  belongs_to :market_place

  has_many :fees, inverse_of: :dimension
end
