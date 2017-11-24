class PostsController < ApplicationController
  def index
    render json: {action: "index"}
  end
end
