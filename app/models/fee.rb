# frozen_string_literal: true

class Fee < ApplicationRecord
  belongs_to :dimension,    inverse_of: :fees
  belongs_to :market_place, inverse_of: :fees

  scope :appropriate_fba_fee, Calculations::FbaFeeFinder
end
