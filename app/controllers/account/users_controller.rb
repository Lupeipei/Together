class Account::UsersController < ApplicationController
  before_action :authenticate_user!

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
    if @user.update(user_params)
      redirect_to account_user_path, notice: "信息更新成功"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar)
  end
end
