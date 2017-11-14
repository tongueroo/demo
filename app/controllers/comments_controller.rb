class CommentsController < ApplicationController
  def hot
    post = Post.find("tung")
    render json: {a: "hot", ruby: RUBY_VERSION, post: post}
  end
end
