class EditNullTeamRefEmployee < ActiveRecord::Migration[7.0]
  def change
    remove_reference :employees, :team, null: false, foreign_key: true
    add_reference :employees, :team, null: true, foreign_key: true
  end
end
