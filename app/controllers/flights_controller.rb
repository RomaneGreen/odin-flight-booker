class FlightsController < ApplicationController

  def index

@flight = Flight.new

@airport_id = params[:flight]
@passengers = params[:passengers]
@flight_date = params[:flight_dates]
@flight_id = params[:passengers].to_i + rand(10)
  end

def create


end

end
