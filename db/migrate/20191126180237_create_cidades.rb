class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome
      t.string :estado

      t.timestamps null: false
    end
  end
end
