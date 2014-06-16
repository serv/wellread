class AddBasicAttrsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_password, :string, column_options: {null: false, default: ''}
    add_column :users, :username, :string, column_options: {null: false, default: ''}
    add_column :users, :email, :string, column_options: {null: false, default: ''}
  end
end
