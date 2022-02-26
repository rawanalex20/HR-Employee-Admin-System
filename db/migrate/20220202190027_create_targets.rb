class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.datetime :finish_date
      t.string :attribute
      t.string :team
      t.string :status

      t.timestamps
    end
  end
end
