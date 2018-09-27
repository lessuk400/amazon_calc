class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title

      t.references :market_place, index: true, foreign_key: true

      t.timestamps
    end
  end
end
