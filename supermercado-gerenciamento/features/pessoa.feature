Feature: Pessoa
  As a usuario do sistema
  I want to fazer CRUD de clientes ou funcionarios
  So that controlar o historico das pessoas

  Scenario: Cadastrar um cliente
    Given Estou na pagina de clientes
      And Clico na opcao cadastrar cliente
    When Preencho os campos de CPF com "01234567890", nome com "Jose Silva", Ano com "2015", mes "July", dia "11", Telefone "9902-3278", Limite de credito "70", ano de cadastro "2019", mes "July", dia "17", CPF do Funcionario cadastrante "01234567890" e o primeiro endereco
      And Clico na opcao cadastrar
    Then Vejo que o cliente foi cadastrado

  Scenario: Cadastrar um cliente ja cadastrado
    Given Estou na pagina de clientes
      And Clico na opcao cadastrar cliente
    When Preencho os campos de CPF com "12345678901", nome com "Jose Silva", Ano com "2015", mes "July", dia "11", Telefone "9902-3278", Limite de credito "70", ano de cadastro "2019", mes "July", dia "17", CPF do Funcionario cadastrante "01234567890" e o primeiro endereco
      And Clico na opcao criar
    Then Vejo que o cliente nao foi criado porque o cpf "12345678901" ja existe para um cliente

  Scenario: Criar um funcionario ja cadastrado
    Given Estou na pagina de funcionarios
      And Clico na opcao cadastrar funcionario
    When Preencho os campos de CPF com "01234567890", nome com "jose silva", Ano nascimento "2016", Mes nascimento "July", Dia nascimento "14", Telefone "1245-9882", Salario "900", Cargo "Adiministrador", Ano admissao "2019", Mes Admissao "January", Dia admissao "20", Ano pagamento "2019", Mes pagamento "December", Dia pagamento "15" e seleciono o primeiro endereco
      And Clico na opcao cadastrar
    Then Vejo que o funcionario nao foi criado porque o CPF "01234567890" ja existe

  Scenario: Criar um funcionario
    Given Estou na pagina de funcionarios
      And Clico na opcao cadastrar funcionario
    When Preencho os campos de CPF com "01234567890", nome com "jose silva", Ano nascimento "2016", Mes nascimento "July", Dia nascimento "14", Telefone "1245-9882", Salario "900", Cargo "Adiministrador", Ano admissao "2019", Mes Admissao "January", Dia admissao "20", Ano pagamento "2019", Mes pagamento "December", Dia pagamento "15" e seleciono o primeiro endereco
      And Clico na opcao cadastrar
    Then Vejo que o funcionario foi cadastrado com o CPF "01234567890"
