class AddBookingToRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :rooms, :booking, foreign_key: true
  end
end
