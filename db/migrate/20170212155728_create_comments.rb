class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.bigint :user_id
      t.bigint :blog_id
      t.timestamps
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :blogs
  end
end
