class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :user_id
      t.date :ultima_consulta

      t.timestamps
    end
  end
end
