class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.bigint :user_id
      t.timestamps
    end
    add_foreign_key :blogs, :users
  end
end
