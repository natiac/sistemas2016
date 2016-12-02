class CreateAuditoria < ActiveRecord::Migration[5.0]
  def change
    create_table :auditoria do |t|
      t.datetime :fecha
      t.time :hora
      t.string :accion
      t.string :descripcion_de_suceso
      t.references :personas, foreign_key: true

      t.timestamps
    end
  end
end
