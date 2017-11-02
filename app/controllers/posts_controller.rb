class PostsController < ApplicationController
  def index
    Jets.logger.info("event #{event.inspect}")
    posts = Post.scan # should not use scan for production
    posts.each { |item| Jets.logger.info(item.inspect) }
    render json: {posts: posts.items}, status: 200
  end

  def new
    render json: {a: "new"}, status: 200
  end

  def show
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "show"}, status: 200
  end

  def create
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "create"}, status: 200
  end

  def edit
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "edit"}, status: 200
  end

  def update
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "update"}, status: 200
  end

  def delete
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "delete"}, status: 200
  end
end
