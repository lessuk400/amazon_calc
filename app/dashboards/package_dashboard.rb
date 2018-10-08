# frozen_string_literal: true

require 'administrate/base_dashboard'

class PackageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    shipping_rates:   Field::HasMany,
    market_places:    Field::HasMany,
    id:               Field::Number,
    width:            Field::Number.with_options(decimals: 2),
    height:           Field::Number.with_options(decimals: 2),
    length:           Field::Number.with_options(decimals: 2),
    packaging_weight: Field::Number.with_options(decimals: 2),
    tier:             Field::String.with_options(searchable: false),
    created_at:       Field::DateTime,
    updated_at:       Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    shipping_rates
    market_places
    id
    width
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    shipping_rates
    market_places
    id
    width
    height
    length
    packaging_weight
    tier
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    shipping_rates
    market_places
    width
    height
    length
    packaging_weight
    tier
  ].freeze

  def display_resource(resource)
    resource.tier.humanize
  end
end
