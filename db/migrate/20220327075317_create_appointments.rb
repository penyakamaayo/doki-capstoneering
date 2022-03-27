class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :schedule
      t.string :status

      t.timestamps
    end
  end
end
