class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.bigint :user_id
      t.timestamps
    end
    add_foreign_key :messages, :users
  end
end
