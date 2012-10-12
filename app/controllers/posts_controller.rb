class PostsController < ApplicationController


  before_filter :find_post, :except =>[:index]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

end

private
def find_post
  @post = Post.find(params[:id])
end