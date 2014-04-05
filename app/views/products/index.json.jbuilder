json.array!(@products) do |product|
  json.extract! product, :id, :ProductID, :ProductName, :SupplierID, :CategoryID, :QuantityPerUnit, :UnitPrice, :UnitsInStock, :UnitsOnOrder, :ReorderLevel, :Discontinued
  json.url product_url(product, format: :json)
end
