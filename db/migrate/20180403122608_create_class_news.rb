class CreateClassNews < ActiveRecord::Migration[5.1]
  def change
    create_table :class_news do |t|
      t.string :title
      t.text :drop
      t.text :body

      t.timestamps
    end
  end
end
