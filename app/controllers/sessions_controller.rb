class SessionsController < ApplicationController

  def new
  end

  def create
    # If the user exists AND the password entered is correct
    if user= User.authenticate_with_credentials(params[:email], params[:password])
      # Save the user id inside the browser cookie
      session[:user_id] = user.id
      redirect_to '/'
    else
      #if not, send back to login form
      redirect_to '/login'
    end
  end

  def destroy
    #delete cookie and redirect to login
    session[:user_id] = nil
    redirect_to '/login'
  end
end
