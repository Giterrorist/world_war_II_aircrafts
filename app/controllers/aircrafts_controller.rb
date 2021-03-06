class AircraftsController < ApplicationController
  def index
    @aircrafts = Aircraft.includes(:origin_country).order("name").includes(:operators).includes(:subtypes).page(params[:page])
  end

  def show
    @aircraft = Aircraft.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @aircrafts = Aircraft.where("name LIKE ?", wildcard_search)
  end
end
