# frozen_string_literal: true

class Calculation < ApplicationRecord
  require 'csv'

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each { |product| csv << product.attributes.values }
    end
  end
end
