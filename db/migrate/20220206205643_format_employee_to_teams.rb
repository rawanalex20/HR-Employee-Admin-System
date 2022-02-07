class FormatEmployeeToTeams < ActiveRecord::Migration[7.0]
  def change
    change_column :teams, :employee_id, :integer, null: false, references: :employees, using: 'employee_id::integer'
    add_index :teams, :employee_id
  end
end
