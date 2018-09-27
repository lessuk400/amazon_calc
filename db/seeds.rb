# frozen_string_literal: true

Market.create(name: 'Amazon')
MarketPlace.create(name: 'UK', market_id: 1, vat: 0.20)

# Small letter
Dimension.create(height: 1, length: 20, width: 15, name: 'Small Letter', market_place_id: 1, packaging_weight: 20)

Fee.create(weight: 0.1, price: 1.07, market_place_id: 1, dimension_id: 1)

# Standard Envelope
Dimension.create(height: 2.5, length: 33, width: 23, name: 'Standard Envelope: 500 g', market_place_id: 1, packaging_weight: 40)
Dimension.create(height: 2.5, length: 33, width: 23, name: 'Standard Envelope: 250 g', market_place_id: 1, packaging_weight: 40)
Dimension.create(height: 2.5, length: 33, width: 23, name: 'Standard Envelope: 100 g', market_place_id: 1, packaging_weight: 40)

Fee.create(weight: 500, price: 1.51, market_place_id: 1, dimension_id: 2)
Fee.create(weight: 250, price: 1.31, market_place_id: 1, dimension_id: 3)
Fee.create(weight: 100, price: 1.19, market_place_id: 1, dimension_id: 4)

# Large Envelope
Dimension.create(height: 5, length: 33, width: 23, name: 'Large Envelope: 1,000 g', market_place_id: 1, packaging_weight: 40)

Fee.create(weight: 1000, price: 1.70, market_place_id: 1, dimension_id: 5)

# Standard Parcel
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 12,000 g', market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 11,000 g', market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 10,000 g', market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 9,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 8,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 7,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 6,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 5,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 4,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 3,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 2,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 1,500 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 1,000 g',  market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 500 g',    market_place_id: 1, packaging_weight: 100)
Dimension.create(height: 26, length: 45, width: 34, name: 'Standard Parcel: 250 g',    market_place_id: 1, packaging_weight: 100)

Fee.create(weight: 12000, price: 3.54, market_place_id: 1, dimension_id: 6)
Fee.create(weight: 11000, price: 3.53, market_place_id: 1, dimension_id: 7)
Fee.create(weight: 10000, price: 3.53, market_place_id: 1, dimension_id: 8)
Fee.create(weight: 9000,  price: 3.53, market_place_id: 1, dimension_id: 9)
Fee.create(weight: 8000,  price: 3.53, market_place_id: 1, dimension_id: 10)
Fee.create(weight: 7000,  price: 3.45, market_place_id: 1, dimension_id: 11)
Fee.create(weight: 6000,  price: 3.45, market_place_id: 1, dimension_id: 12)
Fee.create(weight: 5000,  price: 3.40, market_place_id: 1, dimension_id: 13)
Fee.create(weight: 4000,  price: 3.40, market_place_id: 1, dimension_id: 14)
Fee.create(weight: 3000,  price: 3.30, market_place_id: 1, dimension_id: 15)
Fee.create(weight: 2000,  price: 2.41, market_place_id: 1, dimension_id: 16)
Fee.create(weight: 1500,  price: 2.19, market_place_id: 1, dimension_id: 17)
Fee.create(weight: 1000,  price: 1.77, market_place_id: 1, dimension_id: 18)
Fee.create(weight: 500,   price: 1.72, market_place_id: 1, dimension_id: 19)
Fee.create(weight: 250,   price: 1.66, market_place_id: 1, dimension_id: 20)


Category.create(title: 'Sports & Outdoors', market_place_id: 1)

ReferralFee.create(fee: 0.15, min_fee: 0.40, market_place_id: 1, category_id: 1)