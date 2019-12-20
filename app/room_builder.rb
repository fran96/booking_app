require_relative 'models/room'

class RoomBuilder

  def initialize
    @room = Room.new
  end

  def set_address(address)
    @room.address = address
  end

  def set_title(title)
    @room.title = title
  end

  def set_image(image)
    @room.image = image
  end

  def set_sqm(diameter, radius)
    @room.diameter = diameter
    @room.radius = radius
  end

  def set_number_of_beds(beds)
    @room.no_beds = beds
  end

  def set_as_furnished(furnished = true)
    @room.furnished = furnished
  end

  def set_heating(heating = true)
    @room.heating = heating
  end

  def set_number_of_windows(windows)
    @room.no_windows = windows
  end

  def set_balcony(balcony = false)
    @room.balcony = balcony
  end

  def save
    @room.save
  end
end
