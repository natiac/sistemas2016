json.extract! cheque, :id, :titular, :banco, :numero_cheque, :fecha_disponibilidad, :created_at, :updated_at
json.url cheque_url(cheque, format: :json)