class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    if params[:author]
      @articles = @articles.joins(:author).where(users: {username: params[:author]})
    end

    if params[:favorited]
      user = User.find_by_username(params[:favorited])
      if user.present?
        @articles = @articles.joins(:favorites).where(favorites: {user_id: user.id})
      else
        @articles = []
      end
    end
  end

  def show
    @article = Article.find_by(slug: params[:slug])
  end

  def comments
    @comments = Comment.all
  end
end
