class CreateTrechos < ActiveRecord::Migration
  def change
    create_table :trechos do |t|
      t.string :origem
      t.string :destino
      t.date :data_ida
      t.string :horario_ida
      t.string :data_volta
      t.string :horario_volta

      t.timestamps null: false
    end
  end
end
