class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name,:email,:password))
    if @user.save
      flash[:notice] = '注册成功,请登录'
      redirect_to new_sessions_path
    else
      render action:new
    end
  end

  def new_page

  end
end
