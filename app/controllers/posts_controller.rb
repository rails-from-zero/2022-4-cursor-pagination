class PostsController < ApplicationController
  def index
    @posts = Post.order(:id)
  end
end
