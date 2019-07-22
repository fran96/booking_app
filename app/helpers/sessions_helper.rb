module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  #Returns the current logged-in user (if any)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

   def logged_in?
    !current_user.nil?
  end

  def correct_user
    @user = User.find(params[:id])
    @flight = @user.flights
    redirect_to(root_url) unless current_user?(@user)
  end

   #Confirms a logged-in user
   def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

    def log_out
      session.delete(:user_id)
      @current_user = nil
    end
end
