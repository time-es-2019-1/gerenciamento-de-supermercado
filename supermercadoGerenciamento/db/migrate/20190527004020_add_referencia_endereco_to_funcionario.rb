class AddReferenciaEnderecoToFuncionario < ActiveRecord::Migration[5.2]
  def change
    add_reference :funcionarios, :endereco, foreign_key: true
  end
end
