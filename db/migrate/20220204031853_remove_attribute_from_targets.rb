class RemoveAttributeFromTargets < ActiveRecord::Migration[7.0]
  def change
    remove_column :targets, :attribute, :string
  end
end
