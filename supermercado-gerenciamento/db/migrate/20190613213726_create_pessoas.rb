class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.date :dataNascimento
      t.string :numTelefone
      t.string :discriminador
      t.float :limiteCredito
      t.date  :dataCadastro
      t.float :salario
      t.string :cargo
      t.date :dataAdimissao
      t.date :dataPagamento

      t.references :endereco, index:true
      t.timestamps
    end
  end
end
