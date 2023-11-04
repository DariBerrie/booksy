class AddPasswordAndRoleToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :encrypted_password, :string, default: ""
    add_column :users, :role, :string, default: "account_manager"
  end
end
