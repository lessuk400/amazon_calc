# frozen_string_literal: true

require 'administrate/base_dashboard'

class ShippingRateDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    package:      Field::BelongsTo,
    market_place: Field::BelongsTo,
    id:           Field::Number,
    weight:       Field::Number,
    fee:          Field::Number.with_options(decimals: 2),
    created_at:   Field::DateTime,
    updated_at:   Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    package
    market_place
    weight
    fee
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    package
    market_place
    id
    weight
    fee
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    package
    market_place
    weight
    fee
  ].freeze

  # Overwrite this method to customize how shipping rates are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(shipping_rate)
  #   "ShippingRate ##{shipping_rate.id}"
  # end
end
