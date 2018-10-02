# frozen_string_literal: true

module CalculatorHelper
  def marketplace_with_currency(marketplaces)
    marketplaces.map do |mp|
      [mp.name, mp.id,
       data: { currency: ISO3166::Country.find_country_by_alpha3(mp.alpha3).currency.symbol }]
    end
  end

  def price_per_unit(price, currency)
    "#{number_to_currency(price, unit: currency)} per unit"
  end

  def total_price(price, currency)
    number_to_currency(price, unit: currency)
  end
end
