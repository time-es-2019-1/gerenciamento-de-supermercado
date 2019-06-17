class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :bairro
      t.string :nomeCidade
      t.string :nomeRua
      t.string :cep
      t.integer :numResidencia

      t.timestamps
    end
  end
end
