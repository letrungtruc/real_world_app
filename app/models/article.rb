class Article < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  has_many :favorites
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.map(&:name)
  end

  def self.filter_by_author(author)
    Article.joins(:author).where(users: {username: author})
  end

  def self.filter_by_favorite(name)
    user = User.find_by_username(name)
    if user.present?
      Article.joins(:favorites).where(favorites: {user_id: user.id})
    end
  end

  def self.filter_by_tag(tag)
    Article.joins(:tags).where(tags: {name: tag})
  end

end
