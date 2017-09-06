class AddUserToList < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :user, index: true, foreign_key: true
  end
end
