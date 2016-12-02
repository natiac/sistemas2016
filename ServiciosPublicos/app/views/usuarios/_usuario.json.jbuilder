json.extract! usuario, :id, :nickname, :clave, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)