class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      flash[:notice] = '注册成功,请登录'
      redirect_to new_sessions_path
    else
      render action: new
    end
  end

  def new_page
    @article = ArticleMore.new
  end

  def create_page
    @article = ArticleMore.new(params.require(:article_more).permit(:name,:content))
    @article.file_url = params[:files]
    @article.user_id = session[:user_id]
    if @article.save
      redirect_to home_index_path
    else
      render action: new_page
    end

  end
end
