class AddLanguageToEntries < ActiveRecord::Migration[8.0]
  def change
    add_column :entries, :language, :string
  end
end
