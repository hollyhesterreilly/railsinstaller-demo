class Picture < ActiveRecord::Base
  has_and_belongs_to_many :participants
  before_save :default_values
	def default_values
		self.uses ||= 0 #If this value is nil, then set it to the following
	end
end
