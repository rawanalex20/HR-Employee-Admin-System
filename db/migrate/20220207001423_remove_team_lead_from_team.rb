class RemoveTeamLeadFromTeam < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :team_lead, :string
  end
end
