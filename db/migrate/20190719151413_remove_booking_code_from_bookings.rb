class RemoveBookingCodeFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_code, :integer
  end
end
