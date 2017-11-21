class PostsController < ApplicationController
  def index
    posts = Post.scan # should not use scan for production
    render json: {action: "index", posts: posts}
  end
end
