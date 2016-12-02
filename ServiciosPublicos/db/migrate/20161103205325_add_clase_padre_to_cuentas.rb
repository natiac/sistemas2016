class AddClasePadreToCuentas < ActiveRecord::Migration[5.0]
  def change
    add_column :cuentas, :clase_padre, :string
  end
end
