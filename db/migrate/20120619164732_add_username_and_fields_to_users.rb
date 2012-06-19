class AddUsernameAndFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :blocked, :boolean
  end
end
