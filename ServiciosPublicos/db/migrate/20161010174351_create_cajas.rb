class CreateCajas < ActiveRecord::Migration[5.0]
  def change
    create_table :cajas do |t|
      t.integer :numero_caja
      t.string :estado

      t.timestamps
    end
  end
end
