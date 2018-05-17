class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    if params[:author]
      @articles = @articles.joins(:author).where(users: {username: params[:author]})
    end
  end

  def show
    @article = Article.find_by(slug: params[:slug])
  end

  def comments
    @comments = Comment.all
  end
end
