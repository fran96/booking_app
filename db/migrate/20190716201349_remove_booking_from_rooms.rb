class RemoveBookingFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rooms, :booking, foreign_key: true
  end
end
