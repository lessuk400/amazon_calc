# frozen_string_literal: true

require 'administrate/base_dashboard'

class MarketPlaceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    market:        Field::BelongsTo,
    referral_fees: Field::HasMany,
    categories:    Field::HasMany,
    id:            Field::Number,
    name:          Field::String,
    vat:           Field::Number.with_options(decimals: 2),
    created_at:    Field::DateTime,
    updated_at:    Field::DateTime,
    alpha3:        Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    name
    market
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    market
    referral_fees
    id
    name
    vat
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    market
    referral_fees
    categories
    name
    vat
    alpha3
  ].freeze

  def display_resource(resource)
    "'#{resource.name}' marketplace"
  end
end
