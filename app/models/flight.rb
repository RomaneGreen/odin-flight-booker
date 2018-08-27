class Flight < ApplicationRecord
  belongs_to :airport
  belongs_to :departure
  belongs_to :passengers


  def flight_date_formatted
   flight_date.strftime("%m/%d/%Y")
  end


end
