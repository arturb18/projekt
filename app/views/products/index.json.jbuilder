json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :description, :quality, :avalible_time, :farm_product_id
  json.url product_url(product, format: :json)
end
