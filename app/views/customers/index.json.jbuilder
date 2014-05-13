json.array!(@customers) do |customer|
  json.extract! customer, :id, :id, :CompanyName, :ContactName, :ContactTitle, :Address, :City, :Region, :PostalCode, :Country, :Phone, :Fax
  json.url customer_url(customer, format: :json)
end
