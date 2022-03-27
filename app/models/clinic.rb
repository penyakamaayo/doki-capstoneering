class Clinic < ApplicationRecord
  belongs_to :user
  belongs_to :doctor, class_name: 'User', foreign_key: 'user_id'
  belongs_to :secretary, class_name: 'User', foreign_key: 'user_id'

  has_many :clinic_schedules, dependent: :destroy
  has_many :appointments, dependent: :destroy
end
