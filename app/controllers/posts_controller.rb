class PostsController < ApplicationController
  
  def index
    @title = "Index page"
    @posts = Post.all
  end
  
  def edit
    @post = Post.find(params[:id])
    @title = "Edit post #{@post.id}"
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to posts_path
    else
      @title = "Edit post #{@post}"
      render 'edit'
    end
  end
  
  def show
    @post = Post.find(params[:id])
    @title = "Show post #{@post.id}"
  end
  
  def create
    @title = "Create post"
    @post  = Post.create(params[:post])
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end
  
  def new
    @title = "New post"
    @post = Post.new
  end
  
  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end
  
end