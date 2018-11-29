class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title, null: false
      t.string :writer
      t.string :illustrator
      t.boolean :is_series
      t.integer :issue_number
      t.integer :series_total_issue
      t.boolean :ongoing
      t.string :genre
      t.text :synopsis

      t.timestamps
    end
  end
end
