require 'rails_helper'

describe Booking do
  let(:user) { create(:user) }
  let(:booking) { create(:booking, user: user) }

  it "is valid with valid attributes" do
    expect(booking).to be_valid
  end
end