class CreateLecturas < ActiveRecord::Migration[5.0]
  def change
    create_table :lecturas do |t|
      t.integer :lectura_anterior
      t.integer :lectura_actual
      t.date :fecha_anterior
      t.date :fecha_actual

      t.timestamps
    end
  end
end
