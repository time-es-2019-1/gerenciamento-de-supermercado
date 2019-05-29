json.extract! cliente, :id, :nome, :cpf, :dataNascimento, :numTelefone, :limiteCredito, :dataCadastro, :bairro, :nomeRua, :nomeCidade, :cep, :numResidencia,:funcionario_id,:created_at, :updated_at
json.url cliente_url(cliente, format: :json)
