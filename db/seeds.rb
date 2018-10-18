# frozen_string_literal: true

Market.create(name: 'Amazon')
MarketPlace.create(name: 'UK', market_id: 1, vat: 0.20, alpha3: 'GBR')
MarketPlace.create(name: 'DE', market_id: 1, vat: 0.19, alpha3: 'DEU')

# Small letter
Package.create(height: 1, length: 20, width: 15, packaging_weight: 20, tier: 0)

# UK
ShippingRate.create(weight: 100, fee: 1.07, market_place_id: 1, package_id: 1)

# DE
ShippingRate.create(weight: 100, fee: 1.60, market_place_id: 2, package_id: 1)

# Standard Envelope
Package.create(height: 2.5, length: 33, width: 23, packaging_weight: 40, tier: 1)

# UK
ShippingRate.create(weight: 500, fee: 1.51, market_place_id: 1, package_id: 2)
ShippingRate.create(weight: 250, fee: 1.31, market_place_id: 1, package_id: 2)
ShippingRate.create(weight: 100, fee: 1.19, market_place_id: 1, package_id: 2)

# DE
ShippingRate.create(weight: 500, fee: 1.77, market_place_id: 2, package_id: 2)
ShippingRate.create(weight: 250, fee: 1.73, market_place_id: 2, package_id: 2)
ShippingRate.create(weight: 100, fee: 1.72, market_place_id: 2, package_id: 2)

# Large Envelope
Package.create(height: 5, length: 33, width: 23, packaging_weight: 40, tier: 2)

# UK
ShippingRate.create(weight: 1000, fee: 1.70, market_place_id: 1, package_id: 3)

# DE
ShippingRate.create(weight: 1000, fee: 2.14, market_place_id: 2, package_id: 3)

# Standard Parcel
Package.create(height: 26, length: 45, width: 34, packaging_weight: 100, tier: 3)

# UK
ShippingRate.create(weight: 12000, fee: 3.54, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 11000, fee: 3.53, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 10000, fee: 3.53, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 9000,  fee: 3.53, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 8000,  fee: 3.53, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 7000,  fee: 3.45, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 6000,  fee: 3.45, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 5000,  fee: 3.40, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 4000,  fee: 3.40, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 3000,  fee: 3.30, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 2000,  fee: 2.41, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 1500,  fee: 2.19, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 1000,  fee: 1.77, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 500,   fee: 1.72, market_place_id: 1, package_id: 4)
ShippingRate.create(weight: 250,   fee: 1.66, market_place_id: 1, package_id: 4)

# DE
ShippingRate.create(weight: 12000, fee: 4.41, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 11000, fee: 4.40, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 10000, fee: 4.40, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 9000,  fee: 4.40, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 8000,  fee: 4.40, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 7000,  fee: 4.27, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 6000,  fee: 4.27, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 5000,  fee: 4.19, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 4000,  fee: 4.19, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 3000,  fee: 4.18, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 2000,  fee: 3.10, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 1500,  fee: 3.04, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 1000,  fee: 2.98, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 500,   fee: 2.41, market_place_id: 2, package_id: 4)
ShippingRate.create(weight: 250,   fee: 2.32, market_place_id: 2, package_id: 4)


Category.create(title: 'Sports & Outdoors')
Category.create(title: 'Car & Motorbike')
Category.create(title: 'Musical Instruments & DJ')

# UK
ReferralFee.create(fee: 0.15, min_fee: 0.40, market_place_id: 1, category_id: 1)
ReferralFee.create(fee: 0.15, min_fee: 0.40, market_place_id: 1, category_id: 2)
ReferralFee.create(fee: 0.12, min_fee: 0.40, market_place_id: 1, category_id: 3)

# DE
ReferralFee.create(fee: 0.15, min_fee: 0.50, market_place_id: 2, category_id: 1)
ReferralFee.create(fee: 0.15, min_fee: 0.50, market_place_id: 2, category_id: 2)
ReferralFee.create(fee: 0.12, min_fee: 0.40, market_place_id: 2, category_id: 3)