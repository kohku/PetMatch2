class AddTypeAndBreedRelationToPets < ActiveRecord::Migration
  def change
  	add_reference :pets, :pet_type, index: true, foreign_key: true
    add_reference :pets, :pet_breed, index: true, foreign_key: true

  end
end
