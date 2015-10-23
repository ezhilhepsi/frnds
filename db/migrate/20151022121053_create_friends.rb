class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :contact_names
      t.string :phone_number
      t.string :email_id
      t.text :description
      t.string :body
      t.attachment :image

      t.timestamps null: false
    end
  end
end
