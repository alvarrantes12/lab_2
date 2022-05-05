class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.boolean :pedigree
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
