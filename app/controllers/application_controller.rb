class ApplicationController < ActionController::Base
  before_filter :user_set_up


  def user_set_up
    if params[:name]&&params[:password]
    else
      if session[:user_id]
        (User.find_by_id(session[:user_id]) rescue nil)
      else
        render new_sessions_path
      end
    end


  end


end
