
json.extract! cliente, :id, :nome, :cpf, :dataNascimento, :numTelefone,:discriminador, :limiteCredito, :dataCadastro,:funcionario_id,:created_at, :updated_at

json.url cliente_url(cliente, format: :json)
