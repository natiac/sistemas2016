json.extract! facturas_detalle, :id, :monto, :IVA, :created_at, :updated_at
json.url facturas_detalle_url(facturas_detalle, format: :json)