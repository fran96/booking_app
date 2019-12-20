require_relative '../app/room_builder'

builder = RoomBuilder.new
builder.set_title('Room 1')
builder.set_address('Reinekendorf')
builder.set_balcony(false)
builder.set_number_of_windows(3)
builder.set_number_of_beds(3)
builder.set_sqm(80,80)
builder.save

builder = RoomBuilder.new
builder.set_title('Room 2')
builder.set_address('Wedding')
builder.save

builder = RoomBuilder.new
builder.set_title('Room 3')
builder.set_address('Neukölln')
builder.save

#Booking.delete_all
#Room.delete_all




