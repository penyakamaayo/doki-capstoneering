# == Schema Information
#
# Table name: appointments
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  schedule   :datetime
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  clinic_id  :bigint           not null
#
class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :patient, class_name: 'User', foreign_key: 'user_id'
  belongs_to :clinic

  validates :schedule, uniqueness: true
  validate :only_one_appointment_in_a_day, on: :create

  def only_one_appointment_in_a_day
    if user.appointments_in_a_day(schedule) >= 1
      errors.add(:base, "Patient cannot have more than 1 appointment a day.")
    end
  end
end
