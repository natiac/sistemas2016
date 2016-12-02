class CreateRolesPorUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :roles_por_usuarios do |t|

      t.timestamps
    end
  end
end
