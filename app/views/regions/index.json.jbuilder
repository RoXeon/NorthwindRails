json.array!(@regions) do |region|
  json.extract! region, :id, :RegionID, :RegionDescription
  json.url region_url(region, format: :json)
end
