class ChangeTextColumnsToString < ActiveRecord::Migration
  def up
  	change_column :pets, :name, :string
  	change_column :pets, :description, :string
  	change_column :pets, :notes, :string
  end

  def down
  	change_column :pets, :name, :text
  	change_column :pets, :description, :text
  	change_column :pets, :notes, :text
  end
end
