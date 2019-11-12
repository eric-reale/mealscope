class EditUserSignInCount < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :sign_in_count, :integer, default: 0
  end
end
