class AddTokenAndExpiredAtField < ActiveRecord::Migration[5.2]
  def change
    add_column :calculations, :token, :string
    add_column :calculations, :expired_at, :datetime
  end
end
