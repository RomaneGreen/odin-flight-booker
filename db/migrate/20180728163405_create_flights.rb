class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :airport, foreign_key: true
      t.datetime :flight_date
      t.string :flight_duration

      t.timestamps
    end
  end
end
