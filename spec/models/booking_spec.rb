require 'rails_helper'

describe Booking do
  before(:all) do
    @user = create(:user)
    @booking = create(:booking, user: @user)
  end

  it "is valid with valid attributes" do
    expect(@booking).to be_valid
  end
end