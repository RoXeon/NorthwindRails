json.array!(@shippers) do |shipper|
  json.extract! shipper, :id, :ShipperID, :CompanyName, :Phone
  json.url shipper_url(shipper, format: :json)
end
