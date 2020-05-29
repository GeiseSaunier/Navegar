class CreateDados < ActiveRecord::Migration
  def change
    create_table :dados do |t|
      t.string :nome
      t.string :sobrenome
      t.string :cpf
      t.string :sexo
      t.string :email
      t.string :pagamento

      t.timestamps null: false
    end
  end
end
