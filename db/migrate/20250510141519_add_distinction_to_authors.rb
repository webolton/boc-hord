class AddDistinctionToAuthors < ActiveRecord::Migration[8.0]
  def change
    add_column :authors, :distinction, :string
  end
end
