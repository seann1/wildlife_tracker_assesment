class Sighting < ActiveRecord::Base
  validates :longitude, :presence => true
  validates :latitude, :presence => true
  validates :date, :presence => true
  belongs_to :species
end
