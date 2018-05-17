json.articles_count @articles.size
json.articles(@articles) do |article|
  json.(article, :title, :slug, :body, :created_at, :updated_at,
  :description, :favorited, :favorites_count, :tag_list)
  json.author(article.author, :bio, :username, :image, :created_at)
end