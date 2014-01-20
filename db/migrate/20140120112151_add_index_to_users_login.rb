class AddIndexToUsersLogin < ActiveRecord::Migration
  def change
    add_index :customers, :login, unique: true
  end
end
