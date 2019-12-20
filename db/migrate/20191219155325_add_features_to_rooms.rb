class AddFeaturesToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :diameter, :int
    add_column :rooms, :radius, :int
    add_column :rooms, :no_beds, :int
    add_column :rooms, :furnished, :boolean
    add_column :rooms, :heating, :boolean
    add_column :rooms, :windows, :boolean
    add_column :rooms, :balcony, :boolean
    add_column :rooms, :no_windows, :int
  end
end
