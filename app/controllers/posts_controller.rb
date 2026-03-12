class PostsController < ApplicationController

  def index
    
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
end
