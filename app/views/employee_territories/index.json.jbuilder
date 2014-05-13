json.array!(@employee_territories) do |employee_territory|
  json.extract! employee_territory, :id, :employee_id, :territory_id
  json.url employee_territory_url(employee_territory, format: :json)
end
