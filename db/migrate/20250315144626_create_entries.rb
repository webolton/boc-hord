# frozen_string_literal: true

class CreateEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :entries do |t|
      t.string :full_title
      t.datetime :publication_date
      t.integer :start_page
      t.integer :end_page
      t.integer :folio
      t.integer :type
      t.integer :isbn
      t.integer :isbn13
      t.integer :format
      t.string :file_location
      t.integer :volume
      t.string :series
      t.text :notes
      t.timestamps
    end
  end
end
