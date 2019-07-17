class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def create

        @room_title_param = params[:room][:title].to_s
        @room = Room.find_by(title: @room_title_param)

        @booking_title = params[:room][:booking][:title].to_s
        @booking_text = params[:room][:booking][:title].to_s
        @booking_date = params[:date].to_s
    
        @booking = Booking.new(g_params)
    
        if @booking.save
            flash[:success] = "Success"
            return redirect_to bookings_path
        else
            flash[:error] = g_params
            return redirect_to bookings_path
        end
    end
    
    private
    def booking_params
        params.require(:room).permit(:title, :address, :image, :date, address_attributes: [:title], address_attributes: [:text])
    end
end
