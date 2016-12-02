class CreateAsientos < ActiveRecord::Migration[5.0]
  def change
    create_table :asientos do |t|
      t.integer :numero
      t.datetime :fecha
      t.integer :debe
      t.integer :haber

      t.timestamps
    end
  end
end
