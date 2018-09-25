# frozen_string_literal: true

Market.create(name: 'Amazon')
MarketPlace.create(name: 'UK', market_id: 1)
Dimension.create(height: 23, length: 15.5, width: 0.4, name: 'Small Letter', market_place_id: 1)
Fee.create(weight: 0.1, price: 0.6, market_place_id: 1, dimension_id: 1)
Category.create(title: 'Additive Manufacturing', market_place_id: 1)
ReferralFee.create(fee: 12, market_place_id: 1, category_id: 1)