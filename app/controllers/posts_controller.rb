class PostsController < ApplicationController
  class_timeout 22

  timeout 18
  def index
    # puts "Post.table_name #{Post.table_name.inspect}"
    posts = Post.scan # should not use scan for production
    render json: {action: "index", posts: posts}
  end
end
