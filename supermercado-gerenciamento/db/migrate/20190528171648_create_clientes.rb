class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.date :dataNascimento
      t.string :numTelefone
      t.float :limiteCredito
      t.date :dataCadastro
      t.string :bairro
      t.string :nomeRua
      t.string :nomeCidade
      t.string :cep
      t.string :numResidencia

      t.timestamps
    end
  end
end
