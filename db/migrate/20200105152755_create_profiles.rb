class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.string :username
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
