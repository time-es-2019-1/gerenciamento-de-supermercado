class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.string :codigo
      t.references :cliente, foreign_key: true
      t.references :funcionario, foreign_key: true
      t.float :valor_total
      t.float :valor_pago
      t.date :data

      t.timestamps
    end
  end
end
