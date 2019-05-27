class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :numTelefone
      t.date :dataNascimento
      t.string :cargo
      t.float :salario
      t.date :dataAdimissao
      t.date :dataPagamento


      t.timestamps
    end
  end
end
