class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :airport, foreign_key: true
      t.references :flight, foreign_key: true

      t.timestamps  
    end
  end
end
