class Account::UsersController < ApplicationController
  before_action :authenticate_user!
  layout 'account'

  def index
    @user = current_user
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_with_password(user_params)
      bypass_sign_in(@user)
      redirect_to account_user_path, notice: "密码更新成功"
    elsif @user.update(user_params)
      redirect_to account_user_path, notice: "信息更新成功"
    else
      render :edit
    end
  end

  def update_password
    @user = current_user
    if @user.update_with_password(user_params)
      bypass_sign_in(@user)
      redirect_to account_user_path, notice: "密码更新成功"
    end
  end


  private


  def user_params
    params.require(:user).permit(:username, :avatar,:current_password, :password, :password_confirmation)
  end
end
