class Participant < ActiveRecord::Base
  has_and_belongs_to_many :pictures
    before_save :default_values
	def default_values
		self.triages ||= 0 #If this value is nil, then set it to the following
	end
end