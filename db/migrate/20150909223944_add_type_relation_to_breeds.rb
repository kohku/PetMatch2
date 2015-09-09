class AddTypeRelationToBreeds < ActiveRecord::Migration
  def change
  	add_reference :pet_breeds, :pet_type, index: true, foreign_key: true
  end
end
