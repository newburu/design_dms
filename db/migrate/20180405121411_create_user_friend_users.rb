class CreateUserFriendUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_friend_users do |t|
      t.references :user, foreign_key: true
      t.integer :friend_user_id

      t.timestamps
    end
  end
end
