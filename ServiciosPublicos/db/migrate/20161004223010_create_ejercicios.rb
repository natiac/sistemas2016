class CreateEjercicios < ActiveRecord::Migration[5.0]
  def change
    create_table :ejercicios do |t|
      t.string :anho
      t.string :estado

      t.timestamps
    end
  end
end
