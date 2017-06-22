json.extract! product, :id, :name, :price, :brand, :icon, :created_at, :updated_at
json.url product_url(product, format: :json)
