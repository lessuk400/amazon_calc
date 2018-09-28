# frozen_string_literal: true

class ReferralFee < ApplicationRecord
  belongs_to :market_place, inverse_of: :referral_fees
  belongs_to :category
end
