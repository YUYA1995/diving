class PostsController < ApplicationController

  def index    
    @posts = Post.all
  end
  
  def new 
    @post = Post.new
  end
  
  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:place, :weather, :temperature, :water_temperature,:SPG_start,:SPG_finish, :dive_start,:dive_finish,:depth,:wind_direction,:wave, :fish, :date,:impression)
  end
end