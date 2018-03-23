class AddUserToDesign < ActiveRecord::Migration[5.1]
  def change
    add_reference :designs, :user, foreign_key: true
  end
end
