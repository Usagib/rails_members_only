# frozen_string_literal: true

# Actions for sessions
class SessionsController < ApplicationController
  def new; end

  def create
    user = find_user
    if user&.authenticate(params[:session][:password])
      log_in user
      remember user
      flash.now[:sucess] = 'Login successfull'
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root
  end

  private

  def find_user
    User.find_by(email: params[:session][:email].downcase)
  end
end
