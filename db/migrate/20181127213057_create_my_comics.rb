class CreateMyComics < ActiveRecord::Migration[5.2]
  def change
    create_table :my_comics do |t|
      t.references :user, foreign_key: true
      t.references :comic, foreign_key: true

      t.timestamps
    end
  end
end
