class AddTagListToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :tag_list, :text, array: true
  end
end
