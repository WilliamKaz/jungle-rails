class UsersController < ApplicationController

  def new
    @user = User.new
  end

 def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to root_path
  else
    redirect_to '/signup'
  end
end


   def login_page
    @user = User.new
    end

  def login
    @user = User.find_by_email(params['user']['email'])
    redirect_to root_path
  end



  def logout
    session[:current_user_email] = nil
    redirect_to root_path

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
