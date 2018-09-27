class AddVatToMarketPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :market_places, :vat, :float
    change_column :referral_fees, :fee, :float
  end
end
