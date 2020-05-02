class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.boolean :like
      t.bigint :user_id
      t.bigint :blog_id
      t.bigint :comment_id
      t.timestamps
    end
    add_foreign_key :likes, :users
    add_foreign_key :likes, :blogs
    add_foreign_key :likes, :comments
  end
end
