# frozen_string_literal: true

class CalculationsController < ApplicationController
  def create
    @facade = Calculations::CreateFacade.new(info: params[:info])

    redirect_to calculation_path(@facade.subject) if @facade.subject_valid?
  end

  def show
    @facade = Calculations::ShowFacade.new(id: params[:id])
  end
end
