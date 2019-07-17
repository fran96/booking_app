class BookingsController < ApplicationController
    def index
        @user = User.find_by(id: session[:user_id])
        @booking =  Booking.where(:user_id => @user.id)
    end

    def show
        @booking = Booking.find(params[:id])
    end
end
