class Patient < User
	has_many :appointments

	def self.default_scope
    where(role: 1)
  end
end
