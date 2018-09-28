class CreateDimensions < ActiveRecord::Migration[5.2]
  def change
    create_table :dimensions do |t|
      t.float  :height
      t.float  :width
      t.float  :length
      t.string :name

      t.references :market_place, index: true, foreign_key: true

      t.timestamps
    end
  end
end
