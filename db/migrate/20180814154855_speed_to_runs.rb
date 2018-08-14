class SpeedToRuns < ActiveRecord::Migration[5.2]
  def change
    add_column :runs, :speed, :integer
  end
end
