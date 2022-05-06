class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :nombre
      t.string :apellido
      t.string :correoElectronico
      t.integer :numeroId

      t.timestamps
    end
  end
end
