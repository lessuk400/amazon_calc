# frozen_string_literal: true

class ReportsController < ApplicationController
  before_action :require_login

  def index
    @calculations = Calculation.all

    respond_to do |format|
      format.csv { send_data @calculations.to_csv, filename: "calculations-#{Date.today}.csv" }
    end
  end
end
