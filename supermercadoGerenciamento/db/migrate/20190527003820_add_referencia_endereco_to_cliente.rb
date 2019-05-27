class AddReferenciaEnderecoToCliente < ActiveRecord::Migration[5.2]
  def change
    add_reference :clientes, :endereco, foreign_key: true
  end
end
