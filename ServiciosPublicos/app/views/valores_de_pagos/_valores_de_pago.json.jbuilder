json.extract! valores_de_pago, :id, :monto_por_forma_pago, :created_at, :updated_at
json.url valores_de_pago_url(valores_de_pago, format: :json)