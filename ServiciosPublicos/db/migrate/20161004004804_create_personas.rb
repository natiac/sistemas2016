class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nacionalidad
      t.string :nombre
      t.string :direccion
      t.string :ruc
      t.integer :telefono
      t.integer :ci_numero
      t.string :correo

      t.timestamps
    end
  end
end
