class EditDivisionIdInEmployeesToNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :employees, :division_id, :integer, null: true
  end
end
