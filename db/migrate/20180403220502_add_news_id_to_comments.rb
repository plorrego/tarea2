class AddNewsIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :news_id, :string
  end
end
