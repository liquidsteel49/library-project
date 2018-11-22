class CreateBorrowers < ActiveRecord::Migration[5.2]
  def change
    create_table :borrowers do |t|
      t.string :name
      t.string :phone_number
      t.foreign_key :book_id

      t.timestamps
    end
  end
end
