class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    if params[:author]
      @articles = Article.filter_by_author(params[:author])
    end

    if params[:favorited]
      @articles = Article.filter_by_favorite(params[:favorited])
      @articles = [] unless @articles
    end

    if params[:tag]
      @articles = Article.filter_by_tag(params[:tag])
    end
  end

  def show
    @article = Article.find_by(slug: params[:slug])
  end

  def comments
    @comments = Comment.all
  end
end
