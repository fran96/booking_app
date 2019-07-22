room_list = [
  [ "Room 1", "Test address 1", "Test image 1" ],
  [ "Room 2", "Test address 2", "Test image 2"],
  [ "Room 3", "Test address 3", "Test image 3" ],
  [ "Room 4", "Test address 4", "Test image 4"]
]

check_tbl = Room.any?
if check_tbl.eql? false
  room_list.each do |title, address, image|
    Room.create( title: title, address: address, image: image)
  end
end


