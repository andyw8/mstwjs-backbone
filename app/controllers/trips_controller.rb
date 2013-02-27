class TripsController < ApplicationController
  respond_to :html, :json

  def index
    @trips = Trip.all
    respond_with @trips
  end

  def show
    @trip = Trip.find params[:id]
    respond_with @trip
  end
end
