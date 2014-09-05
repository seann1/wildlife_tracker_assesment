class SwitchLongitude < ActiveRecord::Migration
  def change
    remove_column :species, :longitude
    add_column :sightings, :longitude, :decimal, {:precision => 8, :scale => 6}
  end
end
