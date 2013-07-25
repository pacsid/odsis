class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :user_id
      t.date :ultima_consulta

      t.timestamps
    end
  def down
  drop_table :pacientes
  end
  end
end
