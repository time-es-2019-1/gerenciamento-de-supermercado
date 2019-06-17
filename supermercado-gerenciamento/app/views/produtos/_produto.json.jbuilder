json.extract! produto, :id, :nome, :quantidade, :precoCompra, :precoVenda, :dataCompra, :dataVencimento, :created_at, :updated_at
json.url produto_url(produto, format: :json)
