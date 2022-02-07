class ChangeEmployeeForeignKeyForDivision < ActiveRecord::Migration[7.0]
  def change
    rename_column :divisions, :employee_id, :manager_id
  end
end
