class Flight < ApplicationRecord
  belongs_to :airport




  def flight_date_formatted
   flight_date.strftime("%m/%d/%Y")
  end


end
