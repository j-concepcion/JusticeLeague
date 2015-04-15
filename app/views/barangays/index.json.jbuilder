json.array!(@barangays) do |barangay|
  json.extract! barangay, :id, :name
  json.url barangay_url(barangay, format: :json)
end
