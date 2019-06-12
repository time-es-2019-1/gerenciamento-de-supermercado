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
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end
