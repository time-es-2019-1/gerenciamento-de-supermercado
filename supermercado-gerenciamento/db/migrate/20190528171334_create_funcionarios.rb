class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.date :dataNascimento
      t.string :numTelefone
      t.float :salario
      t.string :cargo
      t.date :dataAdimissao
      t.date :dataPagamento
      t.string :bairro
      t.string :nomeRua
      t.string :nomeCidade
      t.string :cep
      t.string :numResidencia

      t.timestamps
    end
  end
end
