class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :user_name
      t.string :group_name
      t.string :title
      t.string :whom_question
      t.string :for_question
      t.string :how_question
      t.string :img_first
      t.string :img_second
      t.string :movie_link
      t.string :content
      t.integer :like_num
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
