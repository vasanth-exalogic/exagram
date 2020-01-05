class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :user_id
      t.text :caption
      t.integer :likes

      t.timestamps
    end
  end
end
