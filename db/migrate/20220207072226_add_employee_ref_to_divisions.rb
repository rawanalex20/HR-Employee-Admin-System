class AddEmployeeRefToDivisions < ActiveRecord::Migration[7.0]
  def change
    add_reference :divisions, :employee, null: true, foreign_key: true
  end
end
