# frozen_string_literal: true

class Calculation < ApplicationRecord
  has_secure_token

  def self.to_csv
    Calculations::Export.call(object: self)
  end
end
