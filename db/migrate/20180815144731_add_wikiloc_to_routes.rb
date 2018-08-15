class AddWikilocToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :wikiloc, :string
  end
end
