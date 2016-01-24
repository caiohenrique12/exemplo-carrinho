json.array!(@orders) do |order|
  json.extract! order, :id, :data_compra
  json.url order_url(order, format: :json)
end
