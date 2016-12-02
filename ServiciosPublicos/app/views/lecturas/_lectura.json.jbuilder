json.extract! lectura, :id, :lectura_anterior, :lectura_actual, :fecha_anterior, :fecha_actual, :created_at, :updated_at
json.url lectura_url(lectura, format: :json)