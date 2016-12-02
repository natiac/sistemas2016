json.extract! cuentas_por_asiento, :id, :columna, :monto, :observacion, :created_at, :updated_at
json.url cuentas_por_asiento_url(cuentas_por_asiento, format: :json)