class AddDescriptonAndNotesToPets < ActiveRecord::Migration
  def change
  	add_column :pets, :description, :text
  	add_column :pets, :notes, :text
  end
end
