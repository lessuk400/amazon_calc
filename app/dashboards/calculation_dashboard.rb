# frozen_string_literal: true

require 'administrate/base_dashboard'

class CalculationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id:                     Field::Number,
    email:                  Field::String,
    currency:               Field::String,
    selling_fee_per_unit:   Field::Number.with_options(decimals: 2),
    shipping_cost_per_unit: Field::Number.with_options(decimals: 2),
    vat_duty_cost_per_unit: Field::Number.with_options(decimals: 2),
    ppc_cost_per_unit:      Field::Number.with_options(decimals: 2),
    total_net_cash_profit:  Field::Number.with_options(decimals: 2),
    fba_fee_per_unit:       Field::Number.with_options(decimals: 2),
    created_at:             Field::DateTime,
    updated_at:             Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    email
    currency
    selling_fee_per_unit
    shipping_cost_per_unit
    vat_duty_cost_per_unit
    ppc_cost_per_unit
    total_net_cash_profit
    fba_fee_per_unit
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    email
    currency
    selling_fee_per_unit
    shipping_cost_per_unit
    vat_duty_cost_per_unit
    ppc_cost_per_unit
    total_net_cash_profit
    fba_fee_per_unit
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    email
    currency
    selling_fee_per_unit
    shipping_cost_per_unit
    vat_duty_cost_per_unit
    ppc_cost_per_unit
    total_net_cash_profit
    fba_fee_per_unit
  ].freeze

  # Overwrite this method to customize how calculations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(calculation)
  #   "Calculation ##{calculation.id}"
  # end
end
