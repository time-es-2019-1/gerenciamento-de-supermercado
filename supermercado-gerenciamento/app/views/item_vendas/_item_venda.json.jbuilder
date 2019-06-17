json.extract! item_venda, :id, :produto_id, :venda_id, :quantidade, :created_at, :updated_at
json.url item_venda_url(item_venda, format: :json)
