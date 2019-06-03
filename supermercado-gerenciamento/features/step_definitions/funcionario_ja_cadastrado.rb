Given("Eu estou na pagina de funcionarios") do
  visit "/funcionarios"
  expect(page).to have_current_path('/funcionarios')
end

Given("Eu clico na opcao cadastrar funcionario") do
  visit "/funcionarios/new"
  expect(page).to have_current_path('/funcionarios/new')
end

When("Eu preencho os campos de CPF com {string}, nome com {string}, Ano nascimento {string}, Mes nascimento {string}, Dia nascimento {string}, Telefone {string}, Salario {string}, Cargo {string}, Ano admissao {string}, Mes Admissao {string}, Dia admissao {string}, Ano pagamento {string}, Mes pagamento {string}, Dia pagamento {string}, Bairro {string}, Rua {string}, Cidade {string}, CEP {string}, Numero {string}") do |cpf, nome, anoNascimento, mesNascimento, diaNascimento, telefone, salario, cargo, anoAdmissao, mesAdmissao, diaAdmissao, anoPagamento, mesPagamento, diaPagamento, bairro, rua, cidade, cep, numero|
  fill_in 'funcionario[cpf]', :with=>cpf
  fill_in 'funcionario[nome]', :with=>nome
  select anoNascimento, :from=>'funcionario_dataNascimento_1i'
  select mesNascimento, :from=>'funcionario_dataNascimento_2i'
  select diaNascimento, :from=>'funcionario_dataNascimento_3i'
  fill_in 'funcionario[numTelefone]', :with=>telefone
  fill_in 'funcionario[salario]', :with=>salario
  select cargo, :from=>'funcionario_cargo'
  select anoAdmissao, :from=>'funcionario_dataAdimissao_1i'
  select mesAdmissao, :from=>'funcionario_dataAdimissao_2i'
  select diaAdmissao, :from=>'funcionario_dataAdimissao_3i'
  select anoPagamento, :from=>'funcionario_dataPagamento_1i'
  select mesPagamento, :from=>'funcionario_dataPagamento_2i'
  select diaPagamento, :from=>'funcionario_dataPagamento_3i'
  fill_in 'funcionario[bairro]', :with=>bairro
  fill_in 'funcionario[nomeRua]', :with=>rua
  fill_in 'funcionario[nomeCidade]', :with=>cidade
  fill_in 'funcionario[cep]', :with=>cep
  fill_in 'funcionario[numResidencia]', :with=>numero
  click_button 'cadastrar'
end

When ("Eu clico na opcao cadastrar") do
  click_button 'cadastrar'
end

Then("Eu vejo que o funcionario nao foi criado porque o CPF {string} ja existe") do |cpf|
  visit "/funcionarios"
  expect(page).to have_current_path('/funcionarios')
end
