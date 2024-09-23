class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find params[:id]
    @comments = Comment.includes(:post).where("post_id = #{@post.id}")
  end

end
