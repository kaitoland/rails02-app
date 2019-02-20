json.extract! request, :id, :name, :price, :picture, :place, :stock, :description, :created_at, :updated_at, :created_at, :updated_at
json.url request_url(request, format: :json)
