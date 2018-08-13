class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :start_point
      t.string :end_point
      t.integer :total_length

      t.timestamps
    end
  end
end
