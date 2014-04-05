json.array!(@usstates) do |usstate|
  json.extract! usstate, :id, :StateID, :StateName, :StateAbbr, :StateRegion
  json.url usstate_url(usstate, format: :json)
end
