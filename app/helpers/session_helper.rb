# frozen_string_literal: true

# Session helper methods
module SessionHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_user_check(current_user)
    return true if session[:user_id].eql?(current_user.id)
  end

  def logged_in?
    !current_user.nil?
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  def setcurrent_user
    if cookies[:user_id]
      user = User.find(cookies.signed[:user_id])
      if user&.auth(cookies[:remember_token])
        @current_user = user
        log_in user
      end
    else
      @current_user = nil
    end
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
