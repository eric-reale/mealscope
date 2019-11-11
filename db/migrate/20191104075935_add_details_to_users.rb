class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :avatar, :string
    add_column :users, :about_me, :text
    add_column :users, :trusted_reviewer, :boolean, default: false
  end
end
