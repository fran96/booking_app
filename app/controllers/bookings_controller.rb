class BookingsController < ApplicationController
    before_action :logged_in_user, only: [:index, :show]

    def index
        @user = User.find_by(id: session[:user_id])
        @bookings =  Booking.where(user_id: @user.id)
        
    end

    def show
        @booking = Booking.find(params[:id])
        @room = Room.find_by(id: @booking.room_id)
    end
end
