class Flight < ApplicationRecord
  belongs_to :airport


  def self.get_flight_dates
    # flight_dates = Flight.find_by_sql("SELECT flights.flight_date FROM flights")
    Flight.pluck(:flight_date)

  end

  def flight_date_formatted
   flight_date.strftime("%m/%d/%Y") 
  end


end
