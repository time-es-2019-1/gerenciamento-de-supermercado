json.extract! venda, :id, :codigo, :cliente_id, :funcionario_id, :valor_total, :valor_pago, :data, :created_at, :updated_at
json.url venda_url(venda, format: :json)
