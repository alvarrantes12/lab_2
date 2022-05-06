class CreateCreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :create_owners do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.integer :numeroIdentificacion

      t.timestamps
    end
  end
end
