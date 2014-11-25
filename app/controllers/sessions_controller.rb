class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    
    if @user
      login(@user)
      redirect_to root_url # definitely not right
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to new_session_url
  end
end
