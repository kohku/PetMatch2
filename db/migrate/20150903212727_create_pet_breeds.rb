class CreatePetBreeds < ActiveRecord::Migration
  def change
    create_table :pet_breeds do |t|
      t.string :name
      t.boolean :published

      t.timestamps null: false
    end
  end
end
