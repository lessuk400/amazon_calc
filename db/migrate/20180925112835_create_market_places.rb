class CreateMarketPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :market_places do |t|
      t.string :name

      t.references :market, index: true, foreign_key: true

      t.timestamps
    end
  end
end
