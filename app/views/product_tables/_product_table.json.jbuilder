json.extract! product_table, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url product_table_url(product_table, format: :json)
