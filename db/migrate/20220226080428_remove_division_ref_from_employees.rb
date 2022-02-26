class RemoveDivisionRefFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_reference :employees, :division, foreign_key: true
  end
end
