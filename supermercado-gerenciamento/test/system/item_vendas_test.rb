require "application_system_test_case"

class ItemVendasTest < ApplicationSystemTestCase
  setup do
    @item_venda = item_vendas(:one)
  end

  test "visiting the index" do
    visit item_vendas_url
    assert_selector "h1", text: "Item Vendas"
  end

  test "creating a Item venda" do
    visit item_vendas_url
    click_on "New Item Venda"

    fill_in "Produto", with: @item_venda.produto_id
    fill_in "Quantidade", with: @item_venda.quantidade
    fill_in "Venda", with: @item_venda.venda_id
    click_on "Create Item venda"

    assert_text "Item venda was successfully created"
    click_on "Back"
  end

  test "updating a Item venda" do
    visit item_vendas_url
    click_on "Edit", match: :first

    fill_in "Produto", with: @item_venda.produto_id
    fill_in "Quantidade", with: @item_venda.quantidade
    fill_in "Venda", with: @item_venda.venda_id
    click_on "Update Item venda"

    assert_text "Item venda was successfully updated"
    click_on "Back"
  end

  test "destroying a Item venda" do
    visit item_vendas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item venda was successfully destroyed"
  end
end
