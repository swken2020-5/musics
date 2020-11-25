class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      uid: params[:user][:uid],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation])
    if @user.save
      flash[:info] = "ユーザを登録しました"
      redirect_to users_path
    else
      @user.pass = ""
      render :new
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:info] = "ユーザを削除しました"
    redirect_to users_path
  end
end
