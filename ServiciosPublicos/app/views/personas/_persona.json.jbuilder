json.extract! persona, :id, :nacionalidad, :nombre, :direccion, :ruc, :telefono, :ci_numero, :correo, :created_at, :updated_at
json.url persona_url(persona, format: :json)