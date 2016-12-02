json.extract! asiento, :id, :numero, :fecha, :debe, :haber, :created_at, :updated_at
json.url asiento_url(asiento, format: :json)