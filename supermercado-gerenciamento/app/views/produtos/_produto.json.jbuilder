json.extract! produto, :id, :codigo, :marca, :categoria, :descricao, :preco_venda, :preco_compra, :created_at, :updated_at
json.url produto_url(produto, format: :json)
