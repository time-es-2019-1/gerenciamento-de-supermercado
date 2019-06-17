class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :quantidade
      t.float :precoCompra
      t.float :precoVenda
      t.date :dataCompra
      t.date :dataVencimento

      t.timestamps
    end
  end
end
