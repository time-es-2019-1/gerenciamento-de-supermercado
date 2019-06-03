class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :codigo
      t.string :marca
      t.string :categoria
      t.string :contato_fornecedor
      t.float :preco_venda
      t.float :preco_compra

      t.timestamps
    end
  end
end
