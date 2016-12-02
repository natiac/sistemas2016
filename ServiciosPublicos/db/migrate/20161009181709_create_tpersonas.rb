class CreateTpersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :tpersonas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
