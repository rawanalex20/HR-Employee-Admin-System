class AddTeamRefToTargets < ActiveRecord::Migration[7.0]
  def change
    add_reference :targets, :team, null: false, foreign_key: true
  end
end
