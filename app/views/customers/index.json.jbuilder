json.array!(@customers) do |customer|
  json.extract! customer, :id, :CompanyName, :ContactName, :ContactTitle
  json.url customer_url(customer, format: :json)
end
