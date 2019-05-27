require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Cpf", with: @cliente.cpf
    fill_in "Datacadastro", with: @cliente.dataCadastro
    fill_in "Datanascimento", with: @cliente.dataNascimento
    fill_in "Limitecredito", with: @cliente.limiteCredito
    fill_in "Nome", with: @cliente.nome
    fill_in "Numtelefone", with: @cliente.numTelefone
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @cliente.cpf
    fill_in "Datacadastro", with: @cliente.dataCadastro
    fill_in "Datanascimento", with: @cliente.dataNascimento
    fill_in "Limitecredito", with: @cliente.limiteCredito
    fill_in "Nome", with: @cliente.nome
    fill_in "Numtelefone", with: @cliente.numTelefone
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
