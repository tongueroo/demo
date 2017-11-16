class ArticlesController < ApplicationController
  # TODO: implement before_action
  # before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    puts "article_params #{article_params.inspect}"
    puts "event #{event.inspect}"
    render json: {action: "create", params: params}
    # @article = Article.new(article_params)

    # if @article.save
    #   redirect_to @article, notice: 'Article was successfully created.'
    # else
    #   render :new
    # end
  end

  # PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def delete
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params[:article]
  end
end
