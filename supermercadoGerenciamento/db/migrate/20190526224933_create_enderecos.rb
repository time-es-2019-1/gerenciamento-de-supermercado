class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :bairro
      t.string :nomeRua
      t.string :nomeCidade
      t.string :cep
      t.string :numResidencia

      t.timestamps
    end
  end
end
