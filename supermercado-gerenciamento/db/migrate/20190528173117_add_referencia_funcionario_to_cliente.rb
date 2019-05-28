class AddReferenciaFuncionarioToCliente < ActiveRecord::Migration[5.2]
  def change
    add_reference :clientes, :funcionario, foreign_key: true
  end
end
