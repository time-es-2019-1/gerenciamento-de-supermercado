
json.extract! funcionario, :nome, :cpf, :dataNascimento, :numTelefone,  :salario,:cargo, :dataAdimissao, :dataPagamento,:endereco_id, :created_at, :updated_at

json.url funcionario_url(funcionario, format: :json)
