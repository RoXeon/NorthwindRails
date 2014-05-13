json.array!(@us_states) do |us_state|
  json.extract! us_state, :id, :id, :StateName, :StateAbbr, :StateRegion
  json.url us_state_url(us_state, format: :json)
end
