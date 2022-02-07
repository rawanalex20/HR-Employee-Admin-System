class EditEmployeeIdInTeamsToNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :teams, :employee_id, :integer, null: true
  end
end
