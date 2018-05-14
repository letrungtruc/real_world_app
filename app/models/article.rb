class Article < ActiveRecord::Base
  serialize :tag_list
  belongs_to :author
end
