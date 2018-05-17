class Article < ActiveRecord::Base
  serialize :tag_list
  belongs_to :author, class_name: 'User'
end
