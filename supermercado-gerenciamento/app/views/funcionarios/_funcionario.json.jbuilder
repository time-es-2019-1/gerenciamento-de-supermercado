json.extract! funcionario, :id, :nome, :cpf, :dataNascimento, :numTelefone, :salario, :cargo, :dataAdimissao, :dataPagamento, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
