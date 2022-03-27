class CreateClinicSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :clinic_schedules do |t|
      t.string :day
      t.time :start_time
      t.time :end_time
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
