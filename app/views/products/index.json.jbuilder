json.array!(@products) do |product|
  json.extract! product, :id, :id, :ProductName, :supplier_id, :category_id, :QuantityPerUnit, :UnitPrice, :UnitsInStock, :UnitsOnOrder, :ReorderLevel, :Discontinued
  json.url product_url(product, format: :json)
end
