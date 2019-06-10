class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :bairro
      t.string :rua
      t.string :cep
      t.string :cidade
      t.integer :numero

      t.timestamps
    end
  end
end
