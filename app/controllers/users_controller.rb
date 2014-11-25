class UsersController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      login(@user)
      redirect_to :root
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new # probably not right
    end
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
  
  
end
