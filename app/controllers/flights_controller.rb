class FlightsController < ApplicationController

  def index

@flight = Flight.new
@commit = params[:commit]
@passengers = params[:passengers]
@flight_date = params[:flight_dates]
if params[:commit] == "Search flights"
 @flight_arrival = params[:flight][:airport]
@flight_departure = params[:flight][:departure]
@flight_id =  params[:flight][:airport].size + params[:flight][:departure].size
end
  end

def create


end
private

def flight_params
    params.require(:Flight).permit(:airport_id,:flight_date,:flight_duration)
end
end
