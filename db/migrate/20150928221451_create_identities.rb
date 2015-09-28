class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :provider
      t.string :uid
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
