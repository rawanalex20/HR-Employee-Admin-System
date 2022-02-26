class ChangeDivisionToNullableInTeams < ActiveRecord::Migration[7.0]
  def change
    change_column :teams, :division_id, :integer, null: true
  end
end
