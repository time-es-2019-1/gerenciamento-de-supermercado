
Given("Estou na pagina de clientes") do
  visit "/clientes"
  expect(page).to have_current_path('/clientes')
end

Given("Clico na opcao cadastrar cliente") do
  visit "clientes/new"
  expect(page).to have_current_path('/clientes/new')
end

When("Preencho os campos de CPF com {string}, nome com {string}, Ano com {string}, mes {string}, dia {string}, Telefone {string}, Limite de credito {string}, ano de cadastro {string}, mes {string}, dia {string}, CPF do Funcionario cadastrante {string} e o primeiro endereco") do |cpf, nome, ano, mes, dia, telefone, credito, ano_cad, mes_cad, dia_cad, cpfFuncionario|
  fill_in 'cliente[cpf]', :with=>cpf
  fill_in 'cliente[nome]', :with=>nome
  select ano, :from=>'cliente_dataNascimento_1i'
  select mes, :from=>'cliente_dataNascimento_2i'
  select dia, :from=>'cliente_dataNascimento_3i'
  fill_in 'cliente[numTelefone]', :with=>telefone
  fill_in 'cliente[limiteCredito]', :with=>credito
  select ano_cad, :from=>'cliente_dataCadastro_1i'
  select mes_cad, :from=>'cliente_dataCadastro_2i'
  select dia_cad, :from=>'cliente_dataCadastro_3i'
  select '1', :from=>'cliente_funcionario_id'
  select '1', :from=>'cliente_endereco_id'
end

When("Clico na opcao cadastrar") do
  click_button 'cadastrar'
end

Then("Vejo que o cliente foi cadastrado") do
  visit "/clientes"
  expect(page).to have_current_path('/clientes')
end

Then("Then Vejo que o cliente nao foi criado porque o cpf {string} ja existe para um cliente") do |cpf|
  visit '/clientes'
  expect(page).to have_current_path('/clientes')
end

Given("Estou na pagina de funcionarios") do
  visit "/funcionarios"
  expect(page).to have_current_path('/funcionarios')
end

Given("Clico na opcao cadastrar funcionario") do
  visit "/funcionarios/new"
  expect(page).to have_current_path('/funcionarios/new')
end

When("Preencho os campos de CPF com {string}, nome com {string}, Ano nascimento {string}, Mes nascimento {string}, Dia nascimento {string}, Telefone {string}, Salario {string}, Cargo {string}, Ano admissao {string}, Mes Admissao {string}, Dia admissao {string}, Ano pagamento {string}, Mes pagamento {string}, Dia pagamento {string} e seleciono o primeiro endereco") do |cpf, nome, anoNascimento, mesNascimento, diaNascimento, telefone, salario, cargo, anoAdmissao, mesAdmissao, diaAdmissao, anoPagamento, mesPagamento, diaPagamento|
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
  select '1', :from=>'funcionario_endereco_id'
end

Then("Vejo que o funcionario foi cadastrado com o CPF {string}") do |cpf|
  visit "/funcionarios"
  expect(page).to have_current_path('/funcionarios')
end

Then("Eu vejo que o funcionario nao foi criado porque o CPF {string} ja existe") do |cpf|
  visit "/funcionarios"
  expect(page).to have_current_path('/funcionarios')
end