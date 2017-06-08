class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    @user = User.find_by(:name=>params[:name],:password=>params[:password])
    if @user.present?
      cookies[:user_id] =@user.id
      flash[:notice] = '登陆成功'
      redirect_to root_path,:name=>@user.name
    else
      flash[:notice] = '用户名密码不正确'
      render action: :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = '退出成功'
    redirect_to new_sessions_path
  end
end
