class BookingsController < ApplicationController

  def new
    @booking = Booking.new

    @passenger = @booking.passengers.new
    @commit = params[:commit]
    @passengers = params[:flight][:passengers]
    @flight_date = params[:flight][:flight_date]
    @flight_arrival = params[:flight][:flight_arrival]
    @flight_departure = params[:flight][:flight_departure]
    @flight_id =  params[:flight][:passengers]
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.passengers.build
    if @booking.save

      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
  @booking = Booking.find(params[:id])
   @create = @booking.created_at
   @name = @booking.passengers.first.name
    @email = @booking.passengers.first.email
  end
  private

  def booking_params
   params.require(:booking).permit(passengers_attributes: [:name,:email])
  end
  def passenger_params
      params.require(:passenger).permit(:name,:email)
  end
end
