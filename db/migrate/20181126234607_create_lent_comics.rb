class CreateLentComics < ActiveRecord::Migration[5.2]
  def change
    create_table :lent_comics do |t|
      t.references :comic, foreign_key: true
      t.references :friend, foreign_key: true

      t.timestamps
    end
  end
end
