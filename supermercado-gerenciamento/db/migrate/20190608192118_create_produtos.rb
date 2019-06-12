class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :marca
      t.string :categoria
      t.text :descricao
      t.float :preco_venda
      t.float :preco_compra
      t.integer :quantidade

      t.timestamps
    end
  end
end
