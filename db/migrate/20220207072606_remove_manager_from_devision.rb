class RemoveManagerFromDevision < ActiveRecord::Migration[7.0]
  def change
    remove_column :divisions, :manager, :string
  end
end
