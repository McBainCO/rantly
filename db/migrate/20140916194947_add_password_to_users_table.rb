class AddPasswordToUsersTable < ActiveRecord::Migration
  def change_table
      add_column :users, :password_digest, :string
    end
  end

