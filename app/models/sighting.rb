class Sighting < ActiveRecord::Base
  belongs_to :species
  validates :longitude, :presence => true
  validates :latitude, :presence => true
  validates :date, :presence => true
end
