class CreateItemEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :item_estoques do |t|
      t.references :produto, foreign_key: true, index:true
      t.integer :quantidade

      t.timestamps
    end
  end
end
