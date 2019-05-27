json.extract! funcionario, :id, :nome, :cpf, :numTelefone, :dataNascimento, :cargo, :salario, :dataAdimissao, :dataPagamento, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
