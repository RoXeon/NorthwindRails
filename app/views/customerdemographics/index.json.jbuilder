json.array!(@customerdemographics) do |customerdemographic|
  json.extract! customerdemographic, :id, :CustomerTypeID, :CustomerDesc
  json.url customerdemographic_url(customerdemographic, format: :json)
end
