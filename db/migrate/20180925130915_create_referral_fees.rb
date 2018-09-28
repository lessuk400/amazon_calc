class CreateReferralFees < ActiveRecord::Migration[5.2]
  def change
    create_table :referral_fees do |t|
      t.float :fee

      t.references :market_place, index: true, foreign_key: true
      t.references :category,     index: true, foreign_key: true

      t.timestamps
    end
  end
end
