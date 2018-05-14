class AddArticleIdAndCommentIdToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :article_id, :integer
    add_column :authors, :comment_id, :integer
  end
end
