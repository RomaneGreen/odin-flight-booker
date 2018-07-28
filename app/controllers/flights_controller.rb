class FlightsController < ApplicationController

  def index

@airport = Airport.all
  end

end
