class ChangeEmployeeForeignKeyForTeam < ActiveRecord::Migration[7.0]
  def change
    rename_column :teams, :employee_id, :team_lead_id
  end
end
