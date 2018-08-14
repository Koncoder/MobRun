class CreateRunSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :run_sessions do |t|
      t.string :start_point
      t.references :user, foreign_key: true
      t.references :run, foreign_key: true

      t.timestamps
    end
  end
end
