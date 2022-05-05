class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :last_name
      t.string :e_mail
      t.integer :personal_id

      t.timestamps
    end
  end
end
