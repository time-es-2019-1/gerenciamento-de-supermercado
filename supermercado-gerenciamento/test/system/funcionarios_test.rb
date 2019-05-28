require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionarios"
  end

  test "creating a Funcionario" do
    visit funcionarios_url
    click_on "New Funcionario"

    fill_in "Bairro", with: @funcionario.bairro
    fill_in "Cargo", with: @funcionario.cargo
    fill_in "Cep", with: @funcionario.cep
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Dataadimissao", with: @funcionario.dataAdimissao
    fill_in "Datanascimento", with: @funcionario.dataNascimento
    fill_in "Datapagamento", with: @funcionario.dataPagamento
    fill_in "Nome", with: @funcionario.nome
    fill_in "Nomecidade", with: @funcionario.nomeCidade
    fill_in "Nomerua", with: @funcionario.nomeRua
    fill_in "Numresidencia", with: @funcionario.numResidencia
    fill_in "Numtelefone", with: @funcionario.numTelefone
    fill_in "Salario", with: @funcionario.salario
    click_on "Create Funcionario"

    assert_text "Funcionario was successfully created"
    click_on "Back"
  end

  test "updating a Funcionario" do
    visit funcionarios_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @funcionario.bairro
    fill_in "Cargo", with: @funcionario.cargo
    fill_in "Cep", with: @funcionario.cep
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Dataadimissao", with: @funcionario.dataAdimissao
    fill_in "Datanascimento", with: @funcionario.dataNascimento
    fill_in "Datapagamento", with: @funcionario.dataPagamento
    fill_in "Nome", with: @funcionario.nome
    fill_in "Nomecidade", with: @funcionario.nomeCidade
    fill_in "Nomerua", with: @funcionario.nomeRua
    fill_in "Numresidencia", with: @funcionario.numResidencia
    fill_in "Numtelefone", with: @funcionario.numTelefone
    fill_in "Salario", with: @funcionario.salario
    click_on "Update Funcionario"

    assert_text "Funcionario was successfully updated"
    click_on "Back"
  end

  test "destroying a Funcionario" do
    visit funcionarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funcionario was successfully destroyed"
  end
end
