json.array!(@shippers_tmps) do |shippers_tmp|
  json.extract! shippers_tmp, :id, :shipper_id, :CompanyName, :Phone
  json.url shippers_tmp_url(shippers_tmp, format: :json)
end
