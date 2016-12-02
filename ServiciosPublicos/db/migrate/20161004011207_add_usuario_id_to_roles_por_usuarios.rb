class AddUsuarioIdToRolesPorUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_reference :roles_por_usuarios, :usuario, foreign_key: true
  end
end
