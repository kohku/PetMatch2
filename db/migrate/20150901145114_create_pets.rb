class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.text :name
      t.boolean :published
      t.datetime :birth_date
      t.string :gender

      t.timestamps null: false
    end
  end
end
