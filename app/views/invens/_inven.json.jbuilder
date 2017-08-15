json.extract! inven, :id, :nombre_objeto, :marca, :modelo, :precio, :cantidad, :peso, :created_at, :updated_at
json.url inven_url(inven, format: :json)
