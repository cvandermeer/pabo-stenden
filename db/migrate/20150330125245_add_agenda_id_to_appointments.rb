class AddAgendaIdToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :agenda_id, :integer
  end
end
