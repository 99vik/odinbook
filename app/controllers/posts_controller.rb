class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
    @post = Post.new
  end

  def create
    @post = Post.new

    @post.body = params[:post][:body]
    @post.author = current_user
    @post.datetime = DateTime.now

    if @post.save
      redirect_to root_path
    else
      flash.alert = "Minimum post length is 8 characters."
      @posts = Post.all
      render :index, status: :unprocessable_entity
    end
  end
end
