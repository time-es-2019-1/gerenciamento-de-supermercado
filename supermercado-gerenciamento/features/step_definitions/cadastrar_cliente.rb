Given("Eu estou na pagina de clientes") do
  visit "/clientes"
  expect(page).to have_current_path('/clientes')
end

Given("Eu clico na opcao cadastrar cliente") do
  visit "clientes/new"
  expect(page).to have_current_path('/clientes/new')
end

When("Eu preencho os campos de CPF com {string}, nome com {string}, Ano com {string}, mes {string}, dia {string}, Telefone {string}, Limite de credito {string}, Bairro {string}, Rua {string}, CEP {string}, Numero {string} e o CPF do Funcionario cadastrante {string}") do |cpf, nome, ano, mes, dia, telefone, credito, bairro, rua, cep, numero, cpfFuncionario|
  fill_in 'cliente[cpf]', :with=>cpf
  fill_in 'cliente[nome]', :with=>nome
  select ano, :from=>'cliente_dataNascimento_1i'
  select mes, :from=>'cliente_dataNascimento_2i'
  select dia, :from=>'cliente_dataNascimento_3i'
  fill_in 'cliente[numTelefone]', :with=>telefone
  fill_in 'cliente[limiteCredito]', :with=>credito
  fill_in 'cliente[bairro]', :with=>bairro
  fill_in 'cliente[nomeRua]', :with=>rua
  fill_in 'cliente[cep]', :with=>cep
  fill_in 'cliente[numResidencia]', :with=>numero
  select '', :from=>'cliente_funcionario_id'
end

When("Eu clico na opcao criar") do
  click_button 'cadastrar'
end

Then("Eu vejo que o cliente foi cadastrado") do
  visit "/clientes"
  expect(page).to have_current_path('/clientes')
end