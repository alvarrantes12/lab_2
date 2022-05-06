class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :mail
      t.integer :personal_id

      t.timestamps
    end
  end
end
