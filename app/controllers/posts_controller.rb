class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound # error handling
    redirect_to root_path # Redirect to the root path if the record is not found
  end

  def new
    @post = Post.new
  end

  def create   
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end
end