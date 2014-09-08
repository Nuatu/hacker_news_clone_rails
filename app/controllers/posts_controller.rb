class PostsController < ApplicationController
before_filter :authorize, only: [:edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create

  end

  def show

  end

  def edit

  end

  def destroy

  end

end
