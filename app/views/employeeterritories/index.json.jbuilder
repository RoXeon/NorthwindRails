json.array!(@employeeterritories) do |employeeterritory|
  json.extract! employeeterritory, :id, :EmployeeID, :TerritoryID
  json.url employeeterritory_url(employeeterritory, format: :json)
end
