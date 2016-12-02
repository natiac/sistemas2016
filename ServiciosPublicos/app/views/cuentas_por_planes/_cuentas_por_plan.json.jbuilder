json.extract! cuentas_por_plan, :id, :descripcion, :created_at, :updated_at
json.url cuentas_por_plan_url(cuentas_por_plan, format: :json)