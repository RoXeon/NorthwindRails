json.array!(@customercustomerdemos) do |customercustomerdemo|
  json.extract! customercustomerdemo, :id, :CustomerID, :CustomerTypeID
  json.url customercustomerdemo_url(customercustomerdemo, format: :json)
end
