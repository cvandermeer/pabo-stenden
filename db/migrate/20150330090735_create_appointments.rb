class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.string :title
    	t.text :body
    	t.string :location
    	t.date :date
    	t.time :start_time
    	t.time :end_time
    end
  end
end
