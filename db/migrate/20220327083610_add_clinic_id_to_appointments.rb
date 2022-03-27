class AddClinicIdToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :clinic, null: false, foreign_key: true
  end
end
