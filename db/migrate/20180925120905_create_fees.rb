class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.float :weight
      t.float :price

      t.references :market_place, index: true, foreign_key: true
      t.references :dimension   , index: true, foreign_key: true

      t.timestamps
    end
  end
end
