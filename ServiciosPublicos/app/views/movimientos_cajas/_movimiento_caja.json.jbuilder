json.extract! movimiento_caja, :id, :tipo, :descripcion, :monto_total, :created_at, :updated_at
json.url movimiento_caja_url(movimiento_caja, format: :json)