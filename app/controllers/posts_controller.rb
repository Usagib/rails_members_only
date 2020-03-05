# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :logged_in_user, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = @current_user.posts.new(post_params)
    if @post.save
      flash.now[:success] = 'post created'
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  def logged_in_user
    store_location
    redirect_to login_path unless logged_in?
    flash[:danger] = 'Please log in.' unless logged_in?
  end

  private

  # defines the user attributes protected
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
