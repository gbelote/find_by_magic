class MagicController < ApplicationController
  before_filter :auto_login
  helper_method :current_user

  def index
    @users = User.all
  end

private
  def auto_login
    if params[:token]
      user = User.find_by_token params[:token]
      session[:user_id] = user.id if user.present?
    end
  end

  def current_user
    # return the user object of this session's user
    User.find( session[:user_id] ) if session[:user_id]
  end
end
