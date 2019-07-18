class RoomsController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:index, :edit, :update]

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end
  
  def create
    @room_name_param = params[:room][:title].to_s
    @booking_date_param = params[:room][:date].to_s

    @user = User.find_by(id: session[:user_id])
    @room = Room.find_by(title: @room_name_param)

    #Saving into many-to-many table
    @user.rooms << @room
    @user.save

    @booking = Booking.new(date: @booking_date_param, user_id: @user.id, room_id: @room.id)
    @booking.save

    if @room.save && @user.save && @booking.save
      flash[:success] = "Your booking has been saved!"
      return redirect_to bookings_path
    else
      flash[:error] = "There is a problem with the booking"
      return redirect_to rooms_path
    end
  end
  
  private
  
  def booking_params
  params.require(:room).permit(:title, :address, :date) 
  end


end
