class AddPackagingWeightToDimension < ActiveRecord::Migration[5.2]
  def change
    add_column :dimensions, :packaging_weight, :integer
  end
end
