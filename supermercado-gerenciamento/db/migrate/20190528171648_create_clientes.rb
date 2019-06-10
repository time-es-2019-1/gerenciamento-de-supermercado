class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.date :dataNascimento
      t.string :numTelefone
      t.float :limiteCredito
      t.date  :dataCadastro
      t.belongs_to :funcionario, index: true
      t.references :endereco, foreign_key:true

      t.timestamps
    end
  end
end
