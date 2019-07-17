class RoomsController < ApplicationController
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
    #@user = User.find_by(id: session[:user_id])
  end
  
  def create
    @room_name_param = params[:room][:title].to_s
    
    @user = User.find_by(id: session[:user_id])
    @room = Room.find_by(title: @room_name_param)

    @user.rooms << @room
    @user.save

    if @room.save && @user.save
      return redirect_to rooms_path
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
