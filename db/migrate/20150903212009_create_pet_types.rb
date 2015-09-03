class CreatePetTypes < ActiveRecord::Migration
  def change
    create_table :pet_types do |t|
      t.string :name
      t.boolean :published

      t.timestamps null: false
    end
  end
end
