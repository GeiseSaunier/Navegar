class CreateDadosClientes < ActiveRecord::Migration
  def change
    create_table :dados_clientes do |t|
      t.string :Primeiro
      t.string :nome
      t.string :Sobrenome
      t.string :sexo
      t.string :email
      t.string :cpf
      t.string :int
      t.string :Forma
      t.string :de
      t.string :pagamento

      t.timestamps null: false
    end
  end
end
