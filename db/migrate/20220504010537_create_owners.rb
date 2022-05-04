class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo_electronico
      t.integer :identificacion

      t.timestamps
    end
  end
end
