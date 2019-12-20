class Rooms
  def initialize
    @parts = []
  end

  def add(part)
    @parts << part
  end

  def list_room_properties
    print "Property parts: #{@parts.join(', ')}"
  end
end
