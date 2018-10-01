class CreateShippingRates < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_rates do |t|
      t.integer :weight
      t.float :fee

      t.references :package,      index: true, foreign_key: true
      t.references :market_place, index: true, foreign_key: true

      t.timestamps
    end
  end
end
