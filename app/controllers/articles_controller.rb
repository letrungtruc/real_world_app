class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(slug: params[:slug])
  end

  def comments
    @comments = Comment.all
  end
end
