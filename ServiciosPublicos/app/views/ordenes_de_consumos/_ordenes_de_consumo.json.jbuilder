json.extract! ordenes_de_consumo, :id, :total_a_pagar, :fecha_expedicion, :fecha_vencimiento, :IVA, :created_at, :updated_at
json.url ordenes_de_consumo_url(ordenes_de_consumo, format: :json)
