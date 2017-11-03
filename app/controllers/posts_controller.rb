class PostsController < ApplicationController
  def index
    Jets.logger.info("event #{event.inspect}")
    posts = Post.scan # should not use scan for production
    Jets.logger.info("posts #{posts.inspect}")
    # posts.each { |item| Jets.logger.info(item.inspect) }
    render json: {posts: posts.items, input: event}, status: 200
  end

  def new
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "new", input: event}, status: 200
  end

  def show
    # Jets.logger.info("event #{event.inspect}")
    post = Post.find(params[:id])
    puts "params[:id] #{params[:id].inspect}"
    puts "post #{post.inspect}"
    render json: {a: "show", input: event}, status: 200
  end

  def create
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "create", input: event}, status: 200
  end

  def edit
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "edit", input: event}, status: 200
  end

  def update
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "update", input: event}, status: 200
  end

  def delete
    Jets.logger.info("event #{event.inspect}")
    render json: {a: "delete", input: event}, status: 200
  end
end
