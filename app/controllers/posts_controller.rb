class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create 
    #binding.pry
    post = Post.create!(title: params[:post][:title], description: params[:post][:description])
    post.save
    redirect_to post_path(post)
  end

  def show
    @post = Post.find_by(params[:id])
  end

  def edit 
    @post = Post.find_by(params[:id])
  end
  
  def update 
  end 

  def destroy

  end
end
