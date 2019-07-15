class BookingsController < ApplicationController
    def new
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def create
        @booking = Booking.new(booking_params)
       
        @booking.save
        redirect_to @booking
    end
    
    private
    def booking_params
        params.require(:booking).permit(:title, :text)
    end
end
