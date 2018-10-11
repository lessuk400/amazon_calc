# frozen_string_literal: true

class Calculation < ApplicationRecord
  def self.to_csv
    Calculations::Export.call(object: self)
  end
end
