json.extract! tarjeta, :id, :nro_verificacion, :titular, :categoria_tarjeta, :tipo_tarjeta, :created_at, :updated_at
json.url tarjeta_url(tarjeta, format: :json)