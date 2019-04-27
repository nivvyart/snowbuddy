class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to account_path
    else
      render 'new'
    end
  end

  def edit
    redirect_to login_path unless current_user.present?
    @user = @current_user #User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    flash[:message] = "Account details updated"
    redirect_to account_path
  end


  private
    def user_params
      params.require(:user).permit(:email, :password, :nickname, :password_confirmation)
    end

end
