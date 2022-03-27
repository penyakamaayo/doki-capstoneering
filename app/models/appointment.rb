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
  belongs_to :clinic
end
