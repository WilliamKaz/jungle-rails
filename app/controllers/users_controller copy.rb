class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(params['user'].permit(:first_name, :last_name, :email, :password, :password_confirmation))
    session[:current_user_email] = @user.email
    redirect_to root_path
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


end
