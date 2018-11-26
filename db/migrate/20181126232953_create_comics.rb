class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.boolean :user_owns
      t.boolean :lent
      t.string :title
      t.references :writer, foreign_key: true
      t.references :illustrator, foreign_key: true
      t.boolean :series
      t.integer :issue
      t.integer :current
      t.boolean :ongoing

      t.timestamps
    end
  end
end
