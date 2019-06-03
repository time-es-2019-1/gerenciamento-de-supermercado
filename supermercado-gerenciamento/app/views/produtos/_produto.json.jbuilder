json.extract! produto, :id, :codigo, :marca, :categoria, :contato_fornecedor, :preco_venda, :preco_compra, :created_at, :updated_at
json.url produto_url(produto, format: :json)
