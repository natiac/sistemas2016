

json.array!(@facturas) do |factura|
  json.extract! factura, :id, :numero, :cliente_id, :fecha_expedicion, :fecha_vencimiento, :servicio_id, :total_a_pagar
  json.url factura_url(factura, format: :json)
end
