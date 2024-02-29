class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :user_name
      t.string :group_name
      t.string :content
      t.datetime :created_at, null: false
    end
  end
end
