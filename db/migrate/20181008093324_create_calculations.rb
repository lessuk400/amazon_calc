class CreateCalculations < ActiveRecord::Migration[5.2]
  def change
    create_table :calculations do |t|
      t.string :email
      t.string :currency

      t.float :selling_fee_per_unit
      t.float :shipping_cost_per_unit
      t.float :vat_duty_cost_per_unit
      t.float :ppc_cost_per_unit
      t.float :total_net_cash_profit
      t.float :fba_fee_per_unit

      t.timestamps
    end
  end
end
