require 'rails_helper'

describe Booking do
  let(:user) { create(:user) }
  let(:room) { create(:room) }
  let(:booking) { create(:booking, room_id: room.id, user: user) }

  it "is valid with valid attributes" do
    expect(booking).to be_valid
  end
end