class PostsController < ApplicationController
before_filter :authorize, only: [:new, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "Your article has been posted"
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render "show"
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render 'destroy'
  end

private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
