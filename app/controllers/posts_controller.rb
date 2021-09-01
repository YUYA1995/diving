class PostsController < ApplicationController

  def index    
    @posts = Post.all
  end
  
  def new 
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render action: :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.update(post_params)
      redirect_to posts_path
    else
      render action: :edit 
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:time, :place, :weather, :temperature, :water_temperature,:SPG_start,:SPG_finish, :dive_start,:dive_finish,:depth,:wind_direction,:wave, :fish, :date,:impression)
  end
end