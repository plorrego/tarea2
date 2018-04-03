class AddClassNewsIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :class_news_id, :string
  end
end
