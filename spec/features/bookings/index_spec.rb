require 'rails_helper'

describe 'Bookings #index' do
    let(:user) { create(:user) }
    let(:booking) { create(:booking, user: user) }

    it "displays bookings for particular user" do
        visit bookings_path
        expect('.table td').to have_content(booking.booking_code)
    end
end
