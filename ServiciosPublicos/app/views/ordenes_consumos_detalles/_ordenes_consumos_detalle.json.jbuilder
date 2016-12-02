json.extract! ordenes_consumos_detalle, :id, :monto, :IVA, :created_at, :updated_at
json.url ordenes_consumos_detalle_url(ordenes_consumos_detalle, format: :json)