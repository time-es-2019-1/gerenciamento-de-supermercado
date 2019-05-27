json.extract! endereco, :id, :bairro, :nomeRua, :nomeCidade, :cep, :numResidencia, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
