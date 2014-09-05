class AddLongitude < ActiveRecord::Migration
  def change
    add_column :species, :longitude, :decimal, {:precision => 8, :scale => 6}
  end
end
