class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :user_name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
