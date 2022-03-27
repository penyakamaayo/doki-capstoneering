class Doctor < User
  has_many :appointments

  def self.default_scope
    where(role: 2)
  end
end
