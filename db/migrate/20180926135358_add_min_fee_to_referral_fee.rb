class AddMinFeeToReferralFee < ActiveRecord::Migration[5.2]
  def change
    add_column :referral_fees, :min_fee, :float
  end
end
