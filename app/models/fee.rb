# frozen_string_literal: true

class Fee < ApplicationRecord
  belongs_to :dimension,    inverse_of: :fees
  belongs_to :market_place, inverse_of: :fees
end
