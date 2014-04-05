json.array!(@customers) do |customer|
  json.extract! customer, :id, :CustomerID, :CompanyName, :ContactName, :ContactTitle, :Address, :City, :Region, :PostalCode, :Country, :Phone, :Fax
  json.url customer_url(customer, format: :json)
end
