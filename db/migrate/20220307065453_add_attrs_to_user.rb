class AddAttrsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :sign_in_count, :integer, null: false, default: 0
    add_column :users, :last_sign_in_count, :datetime, null: true
    add_column :users, :current_sign_in_count, :datetime, null: true
  end
end
