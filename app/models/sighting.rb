class Sighting < ActiveRecord::Base
  validates :name, :presence => true
end