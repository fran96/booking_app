require 'rails_helper'

describe 'Bookings #index' do
    let(:user) { create(:user) }
    let(:room) { create(:room) }
    let(:booking) { create(:booking, room_id: room, user: user) }

    it "fails because user is not logged in" do
        visit bookings_path
      expect(page).to have_text('Please log in.')
    end
end
