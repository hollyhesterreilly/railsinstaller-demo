class Picture < ActiveRecord::Base
  has_and_belongs_to_many :participants
end
