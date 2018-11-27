class CreateMyComics < ActiveRecord::Migration[5.2]
  def change
    create_table :my_comics do |t|
      t.references :user_id, foreign_key: true
      t.references :comic_id, foreign_key: true

      t.timestamps
    end
  end
end
