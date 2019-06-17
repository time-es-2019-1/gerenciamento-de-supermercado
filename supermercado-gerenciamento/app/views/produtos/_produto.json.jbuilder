<<<<<<< HEAD
json.extract! produto, :id, :nome, :quantidade, :precoCompra, :precoVenda, :dataCompra, :dataVencimento, :created_at, :updated_at
=======
json.extract! produto, :id, :codigo, :marca, :categoria, :descricao, :preco_venda, :preco_compra, :created_at, :updated_at
>>>>>>> 47369c03ba42f9df58dbd2b1145813176df20ad5
json.url produto_url(produto, format: :json)
