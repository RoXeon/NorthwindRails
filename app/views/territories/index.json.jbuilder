json.array!(@territories) do |territory|
  json.extract! territory, :id, :id, :TerritoryDescription, :region_id
  json.url territory_url(territory, format: :json)
end
