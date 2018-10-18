class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.float :width
      t.float :height
      t.float :length
      t.float :packaging_weight
      t.integer :tier, default: 0

      t.timestamps
    end
  end
end
