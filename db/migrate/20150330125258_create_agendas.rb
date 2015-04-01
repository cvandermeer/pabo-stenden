class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
    	t.string :title
    	t.string :color
    	t.integer :user_id
    end
  end
end
