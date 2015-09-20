class AddHashtagToPost < ActiveRecord::Migration
  def change
    add_column :posts, :hashtag, :string
  end
end
