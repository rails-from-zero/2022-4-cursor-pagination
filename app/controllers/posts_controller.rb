class PostsController < ApplicationController
  def index
    pagination_conditions = params[:next_post] ?
                              ['id <= ?', params[:next_post]] :
                              nil
    all_posts = Post
                  .where(nil)
                  .order(id: :desc)
                  .limit(11)
                  .to_a
    @posts = all_posts[0..9]
    @next_post = all_posts[10]
  end
end
