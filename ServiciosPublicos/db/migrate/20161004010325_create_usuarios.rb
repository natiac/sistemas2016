class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nickname
      t.string :clave

      t.timestamps
    end
  end
end
