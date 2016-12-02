class CreatePlanDeCuentas < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_de_cuentas do |t|
      t.string :version
      t.string :estado

      t.timestamps
    end
  end
end
