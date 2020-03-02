# frozen_string_literal: true

# Users controllers allows views interaction
class UsersController < ApplicationController
  before_action :set_user, only: %i[update edit destroy show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:success] = 'The user has been created'
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:success] = 'User updated succesfully!'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
