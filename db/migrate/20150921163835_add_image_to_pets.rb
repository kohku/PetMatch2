class AddImageToPets < ActiveRecord::Migration
  def change
    add_column :pets, :image, :string
  end
end
