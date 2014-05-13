json.array!(@regions) do |region|
  json.extract! region, :id, :id, :RegionDescription
  json.url region_url(region, format: :json)
end
