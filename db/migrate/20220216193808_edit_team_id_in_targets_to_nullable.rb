class EditTeamIdInTargetsToNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :targets, :team_id, :integer, null: true
  end
end
