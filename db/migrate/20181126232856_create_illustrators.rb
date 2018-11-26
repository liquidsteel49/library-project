class CreateIllustrators < ActiveRecord::Migration[5.2]
  def change
    create_table :illustrators do |t|
      t.string :first_name
      t.string :last_name
      t.string :pen_name
      t.string :known_for

      t.timestamps
    end
  end
end
