class UsersController < ApplicationController
  allow_unauthenticated_access only: %i[new create]
  
  def show
  end

  def index
  end

  def new
    @user = User.new
  end

  def create
    begin 
      @user = User.new(user_params)
      if @user.save
        redirect_to new_session_path
      else
        redirect_to new_user_path, alert: "Email already in use"
      end
    rescue ActiveRecord::RecordNotUnique
      redirect_to new_user_path, alert: "Email already in use" 
    end
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:email_address, :password)
    end
end
