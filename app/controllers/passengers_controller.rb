class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)
    if @passenger.save
      redirect_to @passenger
    end
  end
private

  def  passenger_params
     params.require(:passenger).permit(:name,:email)
  end
end
