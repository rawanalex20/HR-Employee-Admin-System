class AddEmplyeeIdToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :employee_id, :integer
  end
end
