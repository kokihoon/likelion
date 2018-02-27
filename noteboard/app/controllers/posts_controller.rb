class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def new
  end
  def update
    post = Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save

    redirect_to '/posts/index'
  end
  def destroy
    post = Post.find(params[:post_id])
    post.destroy

    redirect_to '/posts/index'
  end

  def edit
    @post = Post.find(params[:post_id])

  end
  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save

    redirect_to '/posts/index'
  end
end
