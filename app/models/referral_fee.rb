# frozen_string_literal: true

class ReferralFee < ApplicationRecord
  belongs_to :market_place
  belongs_to :category
end
