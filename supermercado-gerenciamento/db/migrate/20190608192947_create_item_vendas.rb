class CreateItemVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :item_vendas do |t|
      t.references :produto, foreign_key: true
      t.references :venda, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
