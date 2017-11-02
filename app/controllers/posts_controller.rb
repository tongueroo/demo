class PostsController < ApplicationController
  def index
    posts = Post.scan # should not use scan for production
    posts.each { |item| Jets.logger.info(item.inspect) }
    render json: {posts: posts.items}, status: 200
  end

  def new
    render json: {a: "new"}, status: 200
  end

  def show
    render json: {a: "show"}, status: 200
  end

  def create
    render json: {a: "create"}, status: 200
  end

  def edit
    render json: {a: "edit"}, status: 200
  end

  def update
    render json: {a: "update"}, status: 200
  end

  def delete
    render json: {a: "delete"}, status: 200
  end
end
