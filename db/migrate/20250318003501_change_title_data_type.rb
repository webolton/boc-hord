class ChangeTitleDataType < ActiveRecord::Migration[8.0]
  def change
    change_column :entries, :full_title, :text
  end
end
