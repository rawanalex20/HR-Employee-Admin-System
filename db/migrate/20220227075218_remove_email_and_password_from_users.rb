class RemoveEmailAndPasswordFromUsers < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :email, :string
    remove_column :users, :password, :string
  end

  def down
    add_column :users, :email, :string
    add_column :users, :password, :string
  end
end
