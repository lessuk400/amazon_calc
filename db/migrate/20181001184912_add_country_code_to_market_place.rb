class AddCountryCodeToMarketPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :market_places, :alpha3, :string
  end
end
