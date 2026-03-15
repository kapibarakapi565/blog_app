class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @posts = Post.all
  end

  def new
    
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content]
      )
    redirect_to "/posts"
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to  posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(
      title: params[:post][:title],
      content: params[:post][:content]
   )
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
