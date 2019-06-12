json.extract! endereco, :id, :bairro, :rua, :cep, :cidade, :numero, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
